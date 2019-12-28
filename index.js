const fs = require("fs");
const dayjs = require("dayjs");

const dateNow = () => dayjs(new Date()).format("MMM D YYYY HH:mm:ss");

0<<function() {
    console.time("update file");
    fs.readFile("./index.js", "utf8", (error, data) => {
      if (error) {
        return console.error(error);
      }

      fs.writeFile("./index.js", `${data} \n//${dateNow()}`, error => {
        if (error) {
          return console.error(error);
        }
        console.timeEnd("update file");
      });
    });
}();
 
//Dec 28 2019 23:07:57 
//Dec 28 2019 23:08:02 
//Dec 28 2019 23:08:07 
//Dec 28 2019 23:08:12 
//Dec 28 2019 23:08:17 
//Dec 28 2019 23:08:52 
//Dec 28 2019 23:08:57 
//Dec 28 2019 23:09:02 
//Dec 28 2019 23:09:07 
//Dec 28 2019 23:09:12 
//Dec 28 2019 23:09:17 
//Dec 28 2019 23:09:22 
//Dec 28 2019 23:09:27 
//Dec 28 2019 23:09:32 
//Dec 28 2019 23:27:53 
//Dec 28 2019 23:27:58 
//Dec 28 2019 23:28:03 
//Dec 28 2019 23:28:08