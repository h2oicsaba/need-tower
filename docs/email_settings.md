# Email setup for custom domain (Forpsi SMTP + Supabase Auth)

This doc explains how to send Supabase Auth emails (signup confirmation, magic link, reset password) from your own domain (e.g., `noreply@need-shit.fun`) using Forpsi SMTP.

## Overview
- We will use Supabase Auth built-in email flow, but deliver via your own SMTP (Forpsi).
- You MUST configure DNS (SPF, DKIM, DMARC) to achieve good deliverability and avoid spam.
- Optionally, you can later switch to a fully custom email flow via an Edge Function.

## Prerequisites
- Domain: `need-shit.fun`
- Mailbox or SMTP credentials provisioned at Forpsi for `noreply@need-shit.fun` (username/password)
- Access to your DNS zone (where `need-shit.fun` is managed)

## Step 1 — DNS records
Set up the following records on your domain. The exact values depend on Forpsi. Consult their documentation or support for the correct SPF “include” domain and DKIM selector. Use the templates below as a starting point.

- SPF (TXT on root):
  - Name: root of zone (in Forpsi UI leave Host empty, or set `need-shit.fun`)
  - Value (Forpsi only, strict): `v=spf1 include:_spf.forpsi.com -all`
  - Alternative (testing, softfail): `v=spf1 include:_spf.forpsi.com ~all`
  - Notes: Only one SPF TXT is allowed on the root. If one already exists, merge mechanisms into a single record.

- DKIM (TXT on selector host):
  - Name: `<SELECTOR>._domainkey`
  - Value: `v=DKIM1; k=rsa; p=<FORPSI_PROVIDED_PUBLIC_KEY>`
  - Forpsi will provide `<SELECTOR>` and the `p=` public key value.

- DMARC (TXT on `_dmarc`):
  - Purpose: Instructs receivers how to handle mail that fails SPF/DKIM alignment for `need-shit.fun`.
  - Name: `_dmarc`
  - Recommended (start relaxed, then tighten):
    - Start (monitor): `v=DMARC1; p=none; rua=mailto:dmarc@need-shit.fun; fo=1`
    - Later (quarantine/reject): `v=DMARC1; p=quarantine; pct=100; rua=mailto:dmarc@need-shit.fun; fo=1` (or `p=reject`)
  - Notes: DMARC passes if either SPF or DKIM passes AND aligns with the visible From domain.
  - Explanation: `p=` határozza meg a policy-t (`none`/`quarantine`/`reject`), míg `fo=` a hibajelentések módját szabályozza; a `reject` beállításához csak a `p=` értékét cseréled `reject`-re, az `fo=1` maradhat változatlan.

After adding records, wait for DNS propagation (can take minutes to hours). Verify via:
- `dig TXT need-shit.fun +short`
- `dig TXT _dmarc.need-shit.fun +short`
- `dig TXT <SELECTOR>._domainkey.need-shit.fun +short`

## Step 2 — Configure Supabase Auth SMTP
In Supabase Dashboard for your project:
- Go to Authentication → SMTP settings
- Fill with your Forpsi SMTP credentials:
  - Host: `<FORPSI_SMTP_HOST>`
  - Port: `587` (STARTTLS) or `465` (SSL) — per Forpsi recommendation
  - Username: `noreply@need-shit.fun`
  - Password: `<FORPSI_SMTP_PASSWORD>`
  - Secure: match the port/protocol you use
  - Sender name: e.g., `NEED Tower`
  - Sender email: `noreply@need-shit.fun`
- Save.

- Note: Supabase Auth emails innentől a Forpsi SMTP-n keresztül mennek ki a doméned nevében.
- Also set Authentication → URL configuration:
  - Site URL: your deployed app URL (pl. `https://vercel.need-shit.fun`)
  - Email Redirect To: URL, ahová a megerősítő link visszairányít (pl. `https://vercel.need-shit.fun/auth/callback`)

## Step 3 — Customize Auth templates
Authentication → Templates → Confirm signup (and others):
- Subject: pl. `Erősítsd meg a regisztrációd – NEED Tower`
- HTML body (HU példa – használd a szerkesztőben elérhető megerősítő link helyőrzőt):

  ```html
  <div style="font-family: system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif; line-height: 1.5;">
    <!-- Opcionális: saját logó abszolút URL-lel -->
    <div style="margin-bottom:16px;">
      <img src="https://vercel.need-shit.fun/logo.png" alt="NEED Tower" width="120" height="auto" style="display:block;" />
    </div>
    <h2>Erősítsd meg a regisztrációd!</h2>
    <p>Kedves {Felhasználó},</p>
    <p>Köszönjük, hogy regisztráltál a NEED Tower alkalmazásba. A fiókod aktiválásához kattints az alábbi gombra:</p>
    <p>
      <a href="[CONFIRMATION_LINK]" style="display:inline-block; background:#0ea5e9; color:white; padding:10px 16px; border-radius:8px; text-decoration:none;">
        Regisztráció megerősítése
      </a>
    </p>
    <p>Ha a gomb nem működik, másold be ezt a linket a böngésződbe:<br>
      <span style="word-break: break-all;">[CONFIRMATION_LINK]</span>
    </p>
    <hr>
    <p style="font-size:12px;color:#666;">Ez egy automatikusan küldött üzenet a <strong>noreply@need-shit.fun</strong> címről. Ha nem te kezdeményezted, kérjük, hagyd figyelmen kívül.</p>
  </div>
  ```

  - A tényleges link változót a Supabase sablonszerkesztője biztosítja (a szerkesztőben látható helyőrzőt használd a fenti `[CONFIRMATION_LINK]` helyett).
  - Képek: használj publikus, abszolút URL-t (pl. saját domén/CDN). Inline base64 működhet, de a méretet érdemes kicsiben tartani.
- Tip: Legyen tömör szöveg, kerüld a spam-gyanús kifejezéseket és túl nagy képeket.

## Step 4 — Test end-to-end
- Try a new signup from the app.
- Check that the email arrives from `noreply@need-shit.fun`.
- Inspect headers for SPF/DKIM/DMARC pass results.
- Test gmail/outlook/yahoo if possible.
- Verify the confirmation link redirects back to your site (`emailRedirectTo`).

## Troubleshooting
- Email lands in spam:
  - Ensure SPF record exists and includes Forpsi
  - Ensure DKIM TXT is correct (selector, no extra quotes/spaces)
  - Add DMARC (start with `p=none`, then tighten)
  - Avoid heavy images/attachments in template
- SMTP auth errors:
  - Double-check host/port/TLS
  - Verify mailbox password / application-specific password
  - Forpsi may require enabling SMTP/IMAP access for the mailbox
- Still failing: use Supabase Logs → Auth and test a raw SMTP send with an email client as a control.

## Optional — Fully custom emails (Edge Function)
If you need personalized greeting (e.g., first name) or different content per locale:
- Create an Edge Function that uses the Admin API `auth.admin.generateLink({ type: 'signup', email, options: { redirectTo } })` to obtain a confirmation link.
- Send the email via an HTTP email API (Resend/Mailgun/SendGrid) configured with your domain’s DKIM/SPF.
- Pros: full control over content, easy templating, analytics
- Cons: extra moving parts versus built-in SMTP

## Maintenance checklist
- Rotate SMTP passwords periodically
- Monitor DMARC reports (`rua` mailbox)
- Re-test deliverability after major template changes
- Keep this doc updated with the actual Forpsi SPF include and DKIM selector used
