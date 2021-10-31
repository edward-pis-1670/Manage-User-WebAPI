const express = require("express");
require('dotenv').config();
const db = require("./models/index.models");
const app = express();
const route = require('./components/index.route')
const PORT = process.env.PORT || 1999;

app.use(express.json());

app.use(express.urlencoded({ extended: true }));


app.get("/", (req, res) => {
    res.json({ message: "Welcome to Hacker web" });
});

// Connect & generate table in database
db.sequelize.sync().then(() => {
    console.log("Drop and re-sync db.");
}).catch(err => {
    console.log(err);
});

// Route for app
route(app)


// Listen app on port 
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});