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
//Dec 29 2019 11:57:45 
//Dec 29 2019 11:57:50 
//Dec 29 2019 11:57:55 
//Dec 29 2019 11:58:00 
//Dec 29 2019 11:58:05 
//Dec 29 2019 11:58:10 
//Dec 29 2019 11:58:15 
//Dec 29 2019 11:58:20 
//Dec 29 2019 11:58:25 
//Dec 29 2019 11:58:30 
//Dec 29 2019 11:58:35 
//Dec 29 2019 11:58:40 
//Dec 29 2019 11:58:45 
//Dec 29 2019 11:58:50 
//Dec 29 2019 11:58:55 
//Dec 29 2019 11:59:00 
//Dec 29 2019 11:59:05 
//Dec 29 2019 11:59:10 
//Dec 29 2019 11:59:15 
//Dec 29 2019 11:59:20 
//Dec 29 2019 11:59:25 
//Dec 29 2019 11:59:30 
//Dec 29 2019 11:59:35 
//Dec 29 2019 11:59:40 
//Dec 29 2019 11:59:45 
//Dec 29 2019 11:59:50 
//Dec 29 2019 11:59:55 
//Dec 29 2019 12:00:00 
//Dec 29 2019 12:00:05 
//Dec 29 2019 12:00:10 
//Dec 29 2019 12:00:15 
//Dec 29 2019 12:00:20 
//Dec 29 2019 12:00:25 
//Dec 29 2019 12:00:30 
//Dec 29 2019 12:00:35 
//Dec 29 2019 12:00:40 
//Dec 29 2019 12:00:45 
//Dec 29 2019 12:00:50 
//Dec 29 2019 12:00:55 
//Dec 29 2019 12:01:00 
//Dec 29 2019 12:01:05 
//Dec 29 2019 12:01:10 
//Dec 29 2019 12:01:15 
//Dec 29 2019 12:01:20 
//Dec 29 2019 12:01:25 
//Dec 29 2019 12:01:30 
//Dec 29 2019 12:01:35 
//Dec 29 2019 12:01:40 
//Dec 29 2019 12:01:45 
//Dec 29 2019 12:01:50 
//Dec 29 2019 12:01:55 
//Dec 29 2019 12:02:00 
//Dec 29 2019 12:02:05 
//Dec 29 2019 12:02:10 
//Dec 29 2019 12:02:15 
//Dec 29 2019 12:02:20 
//Dec 29 2019 12:02:25 
//Dec 29 2019 12:02:30 
//Dec 29 2019 12:02:35 
//Dec 29 2019 12:02:40 
//Dec 29 2019 12:02:45 
//Dec 29 2019 12:02:50 
//Dec 29 2019 12:02:55 
//Dec 29 2019 12:03:00 
//Dec 29 2019 12:03:05 
//Dec 29 2019 12:03:10 
//Dec 29 2019 12:03:15 
//Dec 29 2019 12:03:20 
//Dec 29 2019 12:03:25 
//Dec 29 2019 12:03:30 
//Dec 29 2019 12:03:35 
//Dec 29 2019 12:03:40 
//Dec 29 2019 12:03:45 
//Dec 29 2019 12:03:50 
//Dec 29 2019 12:03:55 
//Dec 29 2019 12:04:00 
//Dec 29 2019 12:04:05 
//Dec 29 2019 12:04:10 
//Dec 29 2019 12:04:15 
//Dec 29 2019 12:04:20 
//Dec 29 2019 12:04:25 
//Dec 29 2019 12:04:30 
//Dec 29 2019 12:04:35 
//Dec 29 2019 12:04:40 
//Dec 29 2019 12:04:45 
//Dec 29 2019 12:04:50 
//Dec 29 2019 12:04:55 
//Dec 29 2019 12:05:00 
//Dec 29 2019 12:05:05 
//Dec 29 2019 12:05:10 
//Dec 29 2019 12:05:15 
//Dec 29 2019 12:05:20 
//Dec 29 2019 12:05:25 
//Dec 29 2019 12:05:30 
//Dec 29 2019 12:05:35 
//Dec 29 2019 12:05:40 
//Dec 29 2019 12:05:45 
//Dec 29 2019 12:05:50 
//Dec 29 2019 12:05:55 
//Dec 29 2019 12:06:00 
//Dec 29 2019 12:06:05 
//Dec 29 2019 12:06:10 
//Dec 29 2019 12:06:15 
//Dec 29 2019 12:06:20 
//Dec 29 2019 12:06:25 
//Dec 29 2019 12:06:30 
//Dec 29 2019 12:06:35 
//Dec 29 2019 12:06:40 
//Dec 29 2019 12:06:45 
//Dec 29 2019 12:06:50 
//Dec 29 2019 12:06:55 
//Dec 29 2019 12:07:00 
//Dec 29 2019 12:07:05 
//Dec 29 2019 12:07:10 
//Dec 29 2019 12:07:15 
//Dec 29 2019 12:07:20 
//Dec 29 2019 12:07:25 
//Dec 29 2019 12:07:30 
//Dec 29 2019 12:07:35 
//Dec 29 2019 12:07:40 
//Dec 29 2019 12:07:45 
//Dec 29 2019 12:07:50 
//Dec 29 2019 12:07:55 
//Dec 29 2019 12:08:00 
//Dec 29 2019 12:08:05 
//Dec 29 2019 12:08:10 
//Dec 29 2019 12:08:15 
//Dec 29 2019 12:08:20 
//Dec 29 2019 12:08:25 
//Dec 29 2019 12:08:30 
//Dec 29 2019 12:08:35 
//Dec 29 2019 12:08:40 
//Dec 29 2019 12:08:45 
//Dec 29 2019 12:08:50 
//Dec 29 2019 12:08:55 
//Dec 29 2019 12:09:00 
//Dec 29 2019 12:09:05 
//Dec 29 2019 12:09:10 
//Dec 29 2019 12:09:15 
//Dec 29 2019 12:09:20 
//Dec 29 2019 12:09:25 
//Dec 29 2019 12:09:30 
//Dec 29 2019 12:09:35 
//Dec 29 2019 12:09:40 
//Dec 29 2019 12:09:45 
//Dec 29 2019 12:09:50 
//Dec 29 2019 12:09:55 
//Dec 29 2019 12:10:00 
//Dec 29 2019 12:10:05 
//Dec 29 2019 12:10:10 
//Dec 29 2019 12:10:15 
//Dec 29 2019 12:10:20 
//Dec 29 2019 12:10:25 
//Dec 29 2019 12:10:30 
//Dec 29 2019 12:10:35 
//Dec 29 2019 12:10:40 
//Dec 29 2019 12:10:45 
//Dec 29 2019 12:10:50 
//Dec 29 2019 12:10:55 
//Dec 29 2019 12:11:00 
//Dec 29 2019 12:11:05 
//Dec 29 2019 12:11:10 
//Dec 29 2019 12:11:15 
//Dec 29 2019 12:11:20 
//Dec 29 2019 12:11:25 
//Dec 29 2019 12:11:30 
//Dec 29 2019 12:11:35 
//Dec 29 2019 12:11:40 
//Dec 29 2019 12:11:45 
//Dec 29 2019 12:11:50 
//Dec 29 2019 12:11:55 
//Dec 29 2019 12:12:00 
//Dec 29 2019 12:12:05 
//Dec 29 2019 12:12:10 
//Dec 29 2019 12:12:15 
//Dec 29 2019 12:12:20 
//Dec 29 2019 12:12:25 
//Dec 29 2019 12:12:30 
//Dec 29 2019 12:12:35 
//Dec 29 2019 12:12:40 
//Dec 29 2019 12:12:45 
//Dec 29 2019 12:12:50 
//Dec 29 2019 12:12:55 
//Dec 29 2019 12:13:00 
//Dec 29 2019 12:13:05 
//Dec 29 2019 12:13:10 
//Dec 29 2019 12:13:15 
//Dec 29 2019 12:13 
//Jan 1 2020 13:31:56 
//Jan 1 2020 13:31:57 
//Jan 1 2020 13:31:58 
//Jan 1 2020 13:31:59 
//Jan 1 2020 13:32:00 
//Jan 1 2020 13:32:01 
//Jan 1 2020 13:32:02 
//Jan 1 2020 13:32:03 
//Jan 1 2020 13:32:04 
//Jan 1 2020 13:32:05 
//Jan 1 2020 13:32:06 
//Jan 1 2020 13:32:07 
//Jan 1 2020 13:32:08 
//Jan 1 2020 13:32:09 
//Jan 1 2020 13:32:10 
//Jan 1 2020 13:32:11 
//Jan 1 2020 13:32:12 
//Jan 1 2020 13:32:13 
//Jan 1 2020 13:32:14 
//Jan 1 2020 13:32:15 
//Jan 1 2020 13:32:16 
//Jan 1 2020 13:32:17 
//Jan 1 2020 13:32:18 
//Jan 1 2020 13:32:19 
//Jan 1 2020 13:32:20 
//Jan 1 2020 13:32:21 
//Jan 1 2020 13:32:22 
//Jan 1 2020 13:32:23 
//Jan 1 2020 13:32:24 
//Jan 1 2020 13:32:25 
//Jan 1 2020 13:32:26 
//Jan 1 2020 13:32:27 
//Jan 1 2020 13:32:28 
//Jan 1 2020 13:32:29 
//Jan 1 2020 13:32:30 
//Jan 1 2020 13:32:31 
//Jan 1 2020 13:32:32 
//Jan 1 2020 13:32:33 
//Jan 1 2020 13:32:34 
//Jan 1 2020 13:32:35 
//Jan 1 2020 13:32:36 
//Jan 1 2020 13:32:37 
//Jan 1 2020 13:32:38 
//Jan 1 2020 13:32:39 
//Jan 1 2020 13:32:40 
//Jan 1 2020 13:32:41 
//Jan 1 2020 13:32:42 
//Jan 1 2020 13:32:43 
//Jan 1 2020 13:32:44 
//Jan 1 2020 13:32:45 
//Jan 1 2020 13:32:46 
//Jan 1 2020 13:32:47 
//Jan 1 2020 13:32:48 
//Jan 1 2020 13:32:49 
//Jan 1 2020 13:32:50 
//Jan 1 2020 13:32:51 
//Jan 1 2020 13:32:52 
//Jan 1 2020 13:32:53 
//Jan 1 2020 13:32:54 
//Jan 1 2020 13:32:55 
//Jan 1 2020 13:32:56 
//Jan 1 2020 13:32:57 
//Jan 3 2020 11:21:59 
//Jan 3 2020 11:21:59 
//Jan 3 2020 11:22:00 
//Jan 3 2020 11:22:02 
//Jan 3 2020 11:22:02 
//Jan 3 2020 11:22:03 
//Jan 3 2020 11:22:04 
//Jan 3 2020 11:22:05 
//Jan 3 2020 11:22:06 
//Jan 3 2020 11:22:07 
//Jan 3 2020 11:22:08 
//Jan 3 2020 11:22:09 
//Jan 3 2020 11:22:10 
//Jan 3 2020 11:22:11 
//Jan 3 2020 11:22:12 
//Jan 3 2020 11:22:13 
//Jan 3 2020 11:22:14 
//Jan 3 2020 11:22:15 
//Jan 3 2020 11:22:16 
//Jan 3 2020 11:22:17 
//Jan 3 2020 11:22:18 
//Jan 3 2020 11:22:19 
//Jan 3 2020 11:22:20 
//Jan 3 2020 11:22:21 
//Jan 3 2020 11:22:22