#!/usr/bin/node

// Imports go here
var data = require('./data.js');
const sleep = require('sleep');

var ticks_datetime = 0;

var update = () => {
    var center_module = `%{c} ${data.datetime()}`; 
    var bar_data = `${center_module}`;
    console.log(bar_data);
};

while (true) {
    update();
    sleep.msleep(10);
}
