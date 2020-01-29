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
 
//Jan 29 2020 14:16:05 
//Jan 29 2020 14:16:05 
//Jan 29 2020 14:16:06 
//Jan 29 2020 14:16:07 
//Jan 29 2020 14:16:08 
//Jan 29 2020 14:16:09 
//Jan 29 2020 14:16:10 
//Jan 29 2020 14:16:11 
//Jan 29 2020 14:16:12 
//Jan 29 2020 14:16:13 
//Jan 29 2020 14:16:14 
//Jan 29 2020 14:16:15 
//Jan 29 2020 14:16:16 
//Jan 29 2020 14:16:17 
//Jan 29 2020 14:16:18 
//Jan 29 2020 14:16:19 
//Jan 29 2020 14:16:20 
//Jan 29 2020 14:16:21 
//Jan 29 2020 14:16:22 
//Jan 29 2020 14:16:23 
//Jan 29 2020 14:16:24 
//Jan 29 2020 14:16:25 
//Jan 29 2020 14:16:26 
//Jan 29 2020 14:16:27 
//Jan 29 2020 14:16:28 
//Jan 29 2020 14:16:29 
//Jan 29 2020 14:16:30 
//Jan 29 2020 14:16:31 
//Jan 29 2020 14:16:32 
//Jan 29 2020 14:16:33 
//Jan 29 2020 14:16:34 
//Jan 29 2020 14:16:35 
//Jan 29 2020 14:16:36 
//Jan 29 2020 14:16:37 
//Jan 29 2020 14:16:38 
//Jan 29 2020 14:16:39 
//Jan 29 2020 14:16:40 
//Jan 29 2020 14:16:41 
//Jan 29 2020 14:16:42