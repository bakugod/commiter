const dayjs = require("dayjs");
const { exec, spawn } = require("child_process");

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");
const rand = () => (Math.random() * 6 + 4) | 0;

for (let i = 0; i < rand(); i++) {
  setTimeout(
    () =>
      exec("git pull", () => {
        const worker = exec(
          `node index.js && git add . && git commit -m "${dateNow()}" && git push`
        );

        worker.stdout.on("data", data => {
          console.log("stdout: " + data);
        });
        worker.stderr.on("data", data => {
          console.log("stderr: " + data);
        });
      }),
    i * 1000
  );
}
