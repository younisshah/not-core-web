import { log } from '../shared';

export function bazQux(msg = 'default') {
  log(`Running second child app with message: ${msg}`);
  console.log(`42 * 2 = ${42 * 2}`);
}
