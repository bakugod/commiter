const fs = require("fs");
const dayjs = require("dayjs");
const { exec } = require("child_process");

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
  while(i < times) {
    fs.readFile("./index.js", "utf8", (error, data) => {
      if (error) {
        return console.log(error);
      }
      const replaceTime = (text, index) =>
        text.replace(`(${text[index]})`, `(${i})`);

      const exSourse = data;
      // console.log(data);
      const indexOfTime = exSourse.indexOf("й") + 5;
      replaceTime(exSourse, indexOfTime);
      const newSourse = replaceTime(exSourse, indexOfTime);

      //`${exSourse} \n//${Math.random() * Date.parse(new Date())}`;

      fs.writeFile("./index.js", `${newSourse + templateString}`, error => {
        if (error) {
          return console.log(error);
        }
        console.log("The file was saved!", i++);
      });
    });
  }
}

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");

exec(
  `git add . && git commit -m "${dateNow()}" && git push`,
  (error, stdout, stderr) => {
    console.error(stdout);
  }
);
