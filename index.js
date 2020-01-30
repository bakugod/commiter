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
//Jan 29 2020 14:16:44 
//Jan 29 2020 14:16:44 
//Jan 29 2020 14:16:45 
//Jan 29 2020 14:16:46 
//Jan 29 2020 14:16:47 
//Jan 29 2020 14:16:48 
//Jan 29 2020 14:16:49 
//Jan 29 2020 14:16:50 
//Jan 29 2020 14:16:51 
//Jan 29 2020 14:16:52 
//Jan 29 2020 14:16:53 
//Jan 29 2020 14:16:54 
//Jan 29 2020 14:16:55 
//Jan 29 2020 14:16:56 
//Jan 29 2020 14:16:57 
//Jan 29 2020 14:16:58 
//Jan 29 2020 14:16:59 
//Jan 29 2020 14:17:00 
//Jan 29 2020 14:17:01 
//Jan 29 2020 14:17:02 
//Jan 30 2020 13:59:19 
//Jan 30 2020 13:59:19 
//Jan 30 2020 13:59:19 
//Jan 30 2020 13:59:20 
//Jan 30 2020 13:59:21 
//Jan 30 2020 13:59:22 
//Jan 30 2020 13:59:24 
//Jan 30 2020 13:59:24 
//Jan 30 2020 13:59:25 
//Jan 30 2020 13:59:27 
//Jan 30 2020 13:59:28 
//Jan 30 2020 13:59:28 
//Jan 30 2020 13:59:29 
//Jan 30 2020 13:59:31 
//Jan 30 2020 13:59:32 
//Jan 30 2020 13:59:33 
//Jan 30 2020 13:59:33 
//Jan 30 2020 13:59:35 
//Jan 30 2020 13:59:35 
//Jan 30 2020 13:59:37 
//Jan 30 2020 13:59:37 
//Jan 30 2020 13:59:38 
//Jan 30 2020 13:59:39 
//Jan 30 2020 13:59:40 
//Jan 30 2020 13:59:41 
//Jan 30 2020 13:59:42 
//Jan 30 2020 13:59:44 
//Jan 30 2020 13:59:45 
//Jan 30 2020 13:59:45 
//Jan 30 2020 13:59:46 
//Jan 30 2020 13:59:47 
//Jan 30 2020 13:59:48 
//Jan 30 2020 13:59:50 
//Jan 30 2020 13:59:51 
//Jan 30 2020 13:59:51 
//Jan 30 2020 13:59:53 
//Jan 30 2020 13:59:54 
//Jan 30 2020 13:59:55 
//Jan 30 2020 13:59:56 
//Jan 30 2020 13:59:57 
//Jan 30 2020 13:59:58 
//Jan 30 2020 13:59:59 
//Jan 30 2020 14:00:00 
//Jan 30 2020 14:00:01 
//Jan 30 2020 14:00:02 
//Jan 30 2020 14:00:03 
//Jan 30 2020 14:00:04 
//Jan 30 2020 14:00:05 
//Jan 30 2020 14:00:06 
//Jan 30 2020 14:00:07 
//Jan 30 2020 14:00:07 
//Jan 30 2020 14:00:09 
//Jan 30 2020 14:00:10 
//Jan 30 2020 14:00:11 
//Jan 30 2020 14:00:12