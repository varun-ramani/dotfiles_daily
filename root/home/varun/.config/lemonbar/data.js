// Any necessary imports go here
const os = require('os');
const fs = require('fs');
const moment = require('moment');
const exec = require('child_process').exec;

// Any and all shell commands required to fetch data
const shellcommands = {
    "getWorkspaces": "i3-msg -t get_workspaces"
};

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

// Workspace information
var rawWorkspaces = () => {
    exec(shellcommands.getWorkspaces, function(error, stdout, stderr) {
        return stdout;
    });
};
var workspacesJSON = () => {
    return JSON.parse(rawWorkspaces());
};
var allWorkspaces = () => {
    var toreturn = "";
    var json = workspacesJSON();
    for (var i = 0; i < Object.keys(json).length; i++) {
        toreturn += json[i].num;
    }

    return toreturn;
};


module.exports = {
    user,
    home,
    config,
    mainfont,
    datetime,
    allWorkspaces
};