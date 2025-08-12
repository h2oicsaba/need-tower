import Link from 'next/link';

export default function Home() {
  return (
    <main className="flex h-screen items-center justify-center">
      <Link href="/login" className="text-blue-500">Go to Login</Link>
    </main>
  );
}
