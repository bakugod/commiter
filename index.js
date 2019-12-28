const fs = require("fs");
const dayjs = require("dayjs");

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");

0<<function() {
  fs.readFile("./index.js", "utf8", (error, data) => {
    if (error) {
      return console.log(error);
    }

    fs.writeFile(
      "./index.js",
      `${data} \n//${dateNow()}`,
      error => {
        if (error) {
          return console.log(error);
        }
        console.log("The file was saved!");
      }
    );
  });
}();
 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:59 
//Dec 28 2019 22:36:59 
//Dec 28 2019 22:36:59 
//Dec 28 2019 22:36:59 
//Dec 28 2019 22:38:22 
//Dec 28 2019 22:38:22 
//Dec 28 2019 22:38:22 
//Dec 28 2019 22:39:09 
//Dec 28 2019 22:39:09 
//Dec 28 2019 22:39:09 
//Dec 28 2019 22:39:09 
//Dec 28 2019 22:41:14 
//Dec 28 2019 22:41:14