const fs = require("fs");
const { exec } = require("child_process");

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

0 <<
  (function init(times) {
    for (let i = 0; i < times; i++) {
      fs.readFile("./index.js", "utf8", (error, data) => {
        if (error) {
          return console.log(error);
        }
        const replaceTime = (text, index) =>
          text.replace(`(${text[index]})`, `(${i})`);

        const exSourse = data;
        console.log(data);
        const indexOfTime = exSourse.lastIndexOf(")") - 1;
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
  })(6);

exec(`git add . && git commit -m "${Date()}" && git push`, error => {
  console.error(error);
});


// const fs = require("fs");

// var duty_percentfile = fs.openSync("./index.js", "w")
//   , value = 0 // or whatever your initial value is
// ;

// setInterval(function(){
//   fs.writeSync(duty_percentfile, value, 0);
//   value += 5;
// }, 1000);
