// Any necessary imports go here
const os = require('os');
const fs = require('fs');
const moment = require('moment');
const robot = require('robotjs');

// System specific declarations here
const user = os.userInfo.name;
const home = os.homedir;

// Load in config file
const config = require('./config.json');

// Fonts get declared here
const mainfontname = config.fonts.main.name;
const mainfontsize = config.fonts.main.size;
const mainfont = "'" + `${mainfontname}:size=${mainfontsize}` + "'";

// Date and time
var datetime = () => {
    return moment().format('dddd, MMM Do YYYY, h:mm:ssa');
};

// Get volume and battery information
var volume = () => {
    return 
};

module.exports = {
    user,
    home,
    config,
    mainfont,
    datetime
};