import { log } from '../shared';

export function bazQux(msg = 'default') {
  log(`Running second child app with message: ${msg}`);

  console.log(`The answer is 42`);
}
