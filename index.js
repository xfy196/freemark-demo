const path = require("path");
const fs = require("fs");
var Freemarker = require("freemarker.js");
const data = require("./data.json");
const data3 = require("./data3.json");
const data4 = require("./data4.json");
const data2 = require("./data2.json");
const data5 = require("./data5.json");
const data6 = require("./data6.json");
const data7 = require("./data7.json");
const data8 = require("./data8.json");
const data9 = require("./data9.json");
var fm = new Freemarker({
  viewRoot: path.join(__dirname, "./template"),
  options: {
    /** for fmpp */
  },
});

// Single template file
fm.render("MeetingDetailTemplate.ftl", data9, function (err, html, output) {
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
