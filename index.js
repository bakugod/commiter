const fs = require("fs");
const dayjs = require("dayjs");

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");

0<<function() {
    console.time('update file')
    fs.readFile("./index.js", "utf8", (error, data) => {
      if (error) {
      return console.error(error);
    }

    fs.writeFile(
      "./index.js",
      `${data} \n//${dateNow()}`,
      error => {
        if (error) {
          return console.error(error);
        }
        console.timeEnd('update file')
      }
    );
  });
}(); 
//Dec 28 2019 23:03:02 
//Dec 28 2019 23:03:03 
//Dec 28 2019 23:03:04 
//Dec 28 2019 23:03:05 
//Dec 28 2019 23:03:06 
//Dec 28 2019 23:03:07