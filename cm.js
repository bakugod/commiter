const dayjs = require("dayjs");
const { exec, spawn } = require("child_process");

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");

for (let i = 0; i < 4; i++) {
  setTimeout(
    () => exec("git pull", () => {
      console.log(i)
      const worker = exec(
        `node index.js && git add . && git commit -m "${dateNow()}" && git push`
      );

      // worker.stdout.on("data", data => {
      //   console.log("stdout: " + data);
      // });
      // worker.stderr.on("data", data => {
      //   console.log("stderr: " + data);
      // });
    }),
    i * 1000
  );
}
