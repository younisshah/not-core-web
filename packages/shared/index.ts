export function log(msg: unknown) {
  console.log(`[debug] at ${new Date()} ${msg}`);
}
