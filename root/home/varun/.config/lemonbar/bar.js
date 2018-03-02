#!/usr/bin/node

const constants = require('./data.js');
const shell = require('shelljs');

shell.exec(`${constants.home}/.config/lemonbar/barfeed.js | lemonbar -p -f ${constants.mainfont}`);