export function formatBio(bio: string | null | undefined): string {
  if (!bio) return '';
  return bio.replace(/\.\s*Based in [^.]+\./gi, '.').trim();
}
