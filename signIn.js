const path = require("path");
const fs = require("fs");
var Freemarker = require("freemarker.js");
const signInData = require("./json/signIn.json");
var fm = new Freemarker({
  viewRoot: path.join(__dirname, "./template"),
  options: {
    /** for fmpp */
  },
});

// Single template file
fm.render("signIn.ftl", signInData, function (err, html, output) {
  console.log("🚀 ~ file: index.js:14 ~ output:", output);
  if (err) {
    console.log("🚀 ~ file: index.js:17 ~ err:", err);
    return;
  }
  fs.writeFile(
    path.join(__dirname, "./out/signIn.html"),
    html,
    "utf8",
    (err) => {
      if (err) {
        console.log(err);
      }
    }
  );
});
