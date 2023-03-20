const FOO = 'foo';
export function deprecated(msg: unknown) {
  console.log(`[x]. Don't use this. This is deprecated: ${msg}`);
  console.log(`${FOO}`);
}
