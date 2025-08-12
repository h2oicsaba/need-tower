# Need Tower Quiz – Game Description (Extended)

## Concept
At the top of the tower is a premium prize. Limited number of players can join each tower run.
The tower has 100 steps. Each step requires 1 NEED to attempt.

**NEED** = in-game currency unit with fixed price per country.
- Example (HU): 1 NEED = 200 HUF
- Example (SK): 1 NEED = 0.50 EUR
- Country-specific pricing and language
- No cross-region play or balance transfer

## Entry & Start
- Each tower has a **toronyLetszam** = number of players required for 100% interest.
- Players "press" the NEED button to join.
- Once **interest = 100%**, the gate closes for new entries and start countdown begins.
- Start delay: 10 minutes after reaching 100%.
- Notifications: email/push to all registered participants.

## Gameplay Flow
### Parameters
- **valaszTimeout** = 7 seconds (time to answer a question)
- **valaszBunti** = 14 seconds (penalty after incorrect answer)
- **valaszBüntiParban** = 21 seconds (penalty for rejecting a duel)
- **toronyLetszam** = configurable per tower

### Question Rounds
- Each step reveals a multiple-choice question (3 options).
- Answer within `valaszTimeout`.
- Correct → +1 step forward.
- Wrong → penalty (`valaszBunti`), cannot move until timer expires.

### Duel System
- You can challenge only players above you in the tower.
- Duel: one multiple-choice question.
- Fastest correct answer wins.
    - Winner: +1 step
    - Loser: −1 step (min 0 safeguard)
- Rejecting a duel → penalty (`valaszBüntiParban`)
- If both answer incorrectly: no movement change, but duel still ends.

### Victory Condition
- First player to reach step 100 wins.
- Once a winner is declared, the tower is locked:
    - No further duels allowed
    - All movement stopped
- Prize is granted to winner, must be claimed within 24h.

## Visual / UI Rules
### Background Progression
- Game visuals change based on player’s current step range:
    - **1–25**: Background #1
    - **26–50**: Background #2
    - **51–75**: Background #3
    - **76–99**: Background #4
    - **100**: Tower top celebration screen (winner shown, game stops)
- Shield icon (pajzs) state:
    - Green: can be challenged
    - Red: currently in duel

If image assets are provided, these backgrounds will be linked or imported into the frontend, with automatic switching based on player position.

## Wallet & Redemption System
### Balance Calculation
- Shop balance = (unplayed NEED × 100%) + (played NEED × `needLevasarlasPercent`)
- Example: `needLevasarlasPercent` = 75% (country-specific)
- Currency and NEED price fixed per country.

### Expiry Rules
- Each NEED lot has a 30-day validity.
- Expiry resets if user plays before expiry date.
- `last_activity_at` stored per user to track.

### Notification Rules
- Weekly digest emails **twice a week** (Mon & Thu).
- Each digest contains:
    - NEEDs expiring in 5 days (D-5)
    - NEEDs expiring next day (D-1)
- **minNotifyAmount**: skip notifications if total expiring value < threshold (e.g. 5000 HUF).
- Soft-grace: if expiry falls between digest days, lot remains spendable until next digest.

### Anti-spam
- Maximum one digest per digest day per user.
- Multiple expiry blocks are aggregated into one email.

## Admin/Configurable Parameters
- `valaszTimeout`
- `valaszBunti`
- `valaszBüntiParban`
- `toronyLetszam`
- `needPriceMinor`
- `currency`
- `needLevasarlasPercent`
- `minNotifyAmount`
- `digestDays` (default: Mon, Thu)
- `digestTime`
