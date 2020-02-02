const dayjs = require("dayjs");
const { exec } = require("child_process");

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");
const rand = (() => (Math.random() * 40 + 15) | 0)();

function createWorkers() {
  exec("git pull", () => {
    const worker = exec(
      `node index.js && git add . && git commit -m "${dateNow()}" && git push`
    );

    worker.stdout.on("data", data => {
      console.log("\x1B[32m%s\033[0m", "stdout: " + data);
    });

    worker.stderr.on("data", data => {
      console.log("\x1b[31m%s\x1b[0m", "stderr: " + data);
    });
  });
}

for (let i = 0; i < 2; i++) {
  setTimeout(createWorkers, i * 2000);
}
