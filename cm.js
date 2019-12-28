const fs = require("fs");
const dayjs = require("dayjs");
const { exec, spawn } = require("child_process");

const хуй = 0;

function rand() {
  return (Math.random() * 6 + 4) | 0;
}

function replaceTime2(text, index, replacement) {
  return (
    text.substr(0, index) +
    replacement +
    text.substr(index + replacement.length)
  );
}

const templateString = `\n//${Math.random() * Date.parse(new Date())}`;

let i = 0;

function init(times) {
  fs.readFile("./index.js", "utf8", (error, data) => {
    if (error) {
      return console.log(error);
    }
    const replaceTime = (text, index) =>
      text.replace(`(${text[index]})`, `(${i})`);

    const exSourse = data;
    console.log(times);
    const indexOfTime = exSourse.indexOf("й") + 5;
    replaceTime(exSourse, indexOfTime);
    const newSourse = replaceTime(exSourse, indexOfTime);

    //`${exSourse} \n//${Math.random() * Date.parse(new Date())}`;

    fs.writeFile("./index.js", `${newSourse + templateString}`, error => {
      if (error) {
        return console.log(error);
      }
      console.log("The file was saved!");
    });
  });
}

init(i);

// while (i < 4) {
//   init(i);
// }

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");
for (let i = 0; i < 4; i++) {
  exec("git pull", err => {
    const worker = exec(
      `node index.js && git add . && git commit -m "${dateNow()}" && git push`
    );

    worker.stdout.on("data", data => {
      console.log("stdout: " + data);
    });
    worker.stderr.on("data", data => {
      console.log("stderr: " + data);
    });
  });
}

// const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");

// while (i < 4) {
//   init(i);
// }

// exec(
//   `git add . && git commit -m "${dateNow()}" && git push`,
//   (error, stdout, stderr) => {
//     console.error(stdout);
//   }
// );
