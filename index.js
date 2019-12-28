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

//655590605671.6072
//1057870336391.8724
//721577845944.9701
//1252268028650.248
 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:31 
//Dec 28 2019 22:36:59 
//Dec 28 2019 22:36:59 
//Dec 28 2019 22:36:59 
//Dec 28 2019 22:36:59