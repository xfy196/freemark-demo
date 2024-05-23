const path = require("path");
const fs = require("fs");
var Freemarker = require("freemarker.js");
const invitationData = require("./json/invitation.json");
var fm = new Freemarker({
  viewRoot: path.join(__dirname, "./template"),
  options: {
    /** for fmpp */
  },
});

// Single template file
fm.render("invitation.ftl", invitationData, function (err, html, output) {
  console.log("🚀 ~ file: index.js:14 ~ output:", output);
  if (err) {
    console.log("🚀 ~ file: index.js:17 ~ err:", err);
    return;
  }
  fs.writeFile(
    path.join(__dirname, "./out/invitation.html"),
    html,
    "utf8",
    (err) => {
      if (err) {
        console.log(err);
      }
    }
  );
});
