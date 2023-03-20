const { execSync } = require('node:child_process');

function getAffectedWidgets(base = process.env.PREVIOUS_SUCCESSFUL_COMMIT) {
  try {
    return execSync(
      `npx nx print-affected --target=build --base=${base} --head=HEAD --select=projects`
    )
      ?.toString('utf8')
      ?.trim()
      .split(',');
  } catch (err) {
    throw new Error(`failed to get affected widets with error ${err}`);
  }
}

console.log(getAffectedWidgets());
