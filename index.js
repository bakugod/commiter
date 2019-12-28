const fs = require("fs");

0 <<
  (function(times) {
    fs.readFile("./index.js", "utf8", (error, data) => {
      if (error) {
        return console.log(error);
      }

      fs.writeFile(
        "./index.js",
        `${data} \n//${Math.random() * Date.parse(new Date())}`,
        error => {
          if (error) {
            return console.log(error);
          }
          console.log("The file was saved!");
        }
      );
    });
  })();

//655590605671.6072 
//1057870336391.8724 
//721577845944.9701