const path = require("path");
const fs = require("fs");
var Freemarker = require("freemarker.js");
const data = require("./json/data.json");
const data3 = require("./json/data3.json");
const data4 = require("./json/data4.json");
const data2 = require("./json/data2.json");
const data5 = require("./json/data5.json");
const data6 = require("./json/data6.json");
const data7 = require("./json/data7.json");
const data8 = require("./json/data8.json");
const data9 = require("./json/data9.json");
const data10 = require("./json/data10.json");
const data11 = require("./json/data11.json");
const data12 = require("./json/data12.json");
const data13 = require("./json/data13.json");
const data14 = require("./json/data14.json");
var fm = new Freemarker({
  viewRoot: path.join(__dirname, "./template"),
  options: {
    /** for fmpp */
  },
});

// Single template file
fm.render("MeetingDetailTemplate.ftl", data14, function (err, html, output) {
  console.log("🚀 ~ file: index.js:14 ~ output:", output);
  if (err) {
    console.log("🚀 ~ file: index.js:17 ~ err:", err);
    return;
  }
  fs.writeFile(
    path.join(__dirname, "./out/MeetingDetailTemplate.html"),
    html,
    "utf8",
    (err) => {
      if (err) {
        console.log(err);
      }
    }
  );
});
