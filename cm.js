const dayjs = require("dayjs");
const { exec } = require("child_process");

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");
const rand = (() => (Math.random() * 6 + 4) | 0)();

function createWorkers() {
  exec("git pull", () => {
    const worker = exec(
      `node index.js && git add . && git commit -m "${dateNow()}" && git push`
    );

    worker.stdout.on("data", data => {
      console.log("\x1b[36m%s\x1b[0m", "stdout: " + data);
    });
    worker.stderr.on("data", data => {
      console.log("\x1b[33m%s\x1b[0m", "stderr: " + data);
    });
  });
}

for (let i = 0; i < 300; i++) {
  setTimeout(createWorkers, i * 5000);
}
