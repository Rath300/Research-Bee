import { redirect } from 'next/navigation';

interface ChatRedirectProps {
  params: { matchId: string };
}

export default function ChatMatchRedirect({ params }: ChatRedirectProps) {
  redirect(`/chats?matchId=${encodeURIComponent(params.matchId)}`);
}
