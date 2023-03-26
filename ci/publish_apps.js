const execSync = require('child_process').execSync;

function getAffectedWidgets(base = process.env.PREVIOUS_SUCCESSFUL_COMMIT) {
  try {
    return execSync(
      `npx nx print-affected --target=build --base=${base} --head=HEAD --select=projects`
    )
      ?.toString('utf8')
      ?.trim()
      .split(',')
      .reduce((acc, curr) => {
        if (curr) {
          acc.push(curr);
        }

        return acc;
      }, []);
  } catch (err) {
    throw new Error(`failed to get affected widets with error ${err}`);
  }
}

const apps = getAffectedWidgets();

if (!apps?.length) {
  console.log('No apps to publish');
} else {
  console.log(`Publishing apps: ${apps.join(', ')}`);
}
