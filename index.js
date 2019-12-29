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
//Dec 28 2019 23:28:13 
//Dec 28 2019 23:28:18 
//Dec 29 2019 00:16:41 
//Dec 29 2019 00:16:46 
//Dec 29 2019 00:16:51 
//Dec 29 2019 00:16:56 
//Dec 29 2019 00:17:01 
//Dec 29 2019 00:17:06 
//Dec 29 2019 00:17:11 
//Dec 29 2019 01:03:44 
//Dec 29 2019 01:03:49 
//Dec 29 2019 01:03:54 
//Dec 29 2019 01:03:59 
//Dec 29 2019 01:04:04 
//Dec 29 2019 01:15:54 
//Dec 29 2019 01:15:59 
//Dec 29 2019 01:16:04 
//Dec 29 2019 01:16:09 
//Dec 29 2019 01:16:14 
//Dec 29 2019 01:16:19 
//Dec 29 2019 01:16:24 
//Dec 29 2019 01:16:29 
//Dec 29 2019 01:16:34 
//Dec 29 2019 01:27:58 
//Dec 29 2019 01:28:01 
//Dec 29 2019 01:28:06 
//Dec 29 2019 01:28:11 
//Dec 29 2019 01:28:15 
//Dec 29 2019 01:33:36 
//Dec 29 2019 01:36:21 
//Dec 29 2019 01:36:24 
//Dec 29 2019 01:36:29 
//Dec 29 2019 01:36:34 
//Dec 29 2019 01:36:39 
//Dec 29 2019 01:36:44 
//Dec 29 2019 11:35:25 
//Dec 29 2019 11:35:29 
//Dec 29 2019 11:35:34 
//Dec 29 2019 11:35:39 
//Dec 29 2019 11:35:44 
//Dec 29 2019 11:35:49 
//Dec 29 2019 11:35:54 
//Dec 29 2019 11:52:00 
//Dec 29 2019 11:52:05 
//Dec 29 2019 11:52:10 
//Dec 29 2019 11:52:15 
//Dec 29 2019 11:52:20 
//Dec 29 2019 11:52:25 
//Dec 29 2019 11:52:30 
//Dec 29 2019 11:52:35 
//Dec 29 2019 11:52:40 
//Dec 29 2019 11:52:45 
//Dec 29 2019 11:52:50 
//Dec 29 2019 11:52:55 
//Dec 29 2019 11:53:00 
//Dec 29 2019 11:53:05 
//Dec 29 2019 11:53:10 
//Dec 29 2019 11:53:15 
//Dec 29 2019 11:53:20 
//Dec 29 2019 11:53:25 
//Dec 29 2019 11:53:30 
//Dec 29 2019 11:53:35 
//Dec 29 2019 11:53:40 
//Dec 29 2019 11:53:45 
//Dec 29 2019 11:53:50 
//Dec 29 2019 11:53:55 
//Dec 29 2019 11:54:00 
//Dec 29 2019 11:54:05 
//Dec 29 2019 11:54:10 
//Dec 29 2019 11:54:15 
//Dec 29 2019 11:54:20 
//Dec 29 2019 11:54:25 
//Dec 29 2019 11:54:30 
//Dec 29 2019 11:54:35 
//Dec 29 2019 11:54:40 
//Dec 29 2019 11:54:45 
//Dec 29 2019 11:54:50 
//Dec 29 2019 11:54:55 
//Dec 29 2019 11:55:00 
//Dec 29 2019 11:55:05 
//Dec 29 2019 11:55:10 
//Dec 29 2019 11:55:15 
//Dec 29 2019 11:55:20 
//Dec 29 2019 11:55:25 
//Dec 29 2019 11:55:30 
//Dec 29 2019 11:55:35 
//Dec 29 2019 11:55:40 
//Dec 29 2019 11:55:45 
//Dec 29 2019 11:55:50 
//Dec 29 2019 11:55:55 
//Dec 29 2019 11:56:00 
//Dec 29 2019 11:56:05 
//Dec 29 2019 11:56:10 
//Dec 29 2019 11:56:15 
//Dec 29 2019 11:56:20 
//Dec 29 2019 11:56:25 
//Dec 29 2019 11:56:30 
//Dec 29 2019 11:56:35 
//Dec 29 2019 11:56:40 
//Dec 29 2019 11:56:45 
//Dec 29 2019 11:56:50 
//Dec 29 2019 11:56:55 
//Dec 29 2019 11:57:00 
//Dec 29 2019 11:57:05 
//Dec 29 2019 11:57:10 
//Dec 29 2019 11:57:15 
//Dec 29 2019 11:57:20 
//Dec 29 2019 11:57:25 
//Dec 29 2019 11:57:30 
//Dec 29 2019 11:57:35 
//Dec 29 2019 11:57:40