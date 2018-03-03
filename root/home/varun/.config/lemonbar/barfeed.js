#!/usr/bin/node

// Imports go here
var data = require('./data.js');
const sleep = require('sleep');

var ticks_datetime = 0;
var ticks_workspace = 0;

var left_module = `%{l} ${data.allWorkspaces()}`;
var center_module = `%{c} ${data.datetime()}`; 

var update = () => {
    if (ticks_workspace == 10) {
        left_module = `%{l} ${data.allWorkspaces()}`;
        ticks_workspace = 0;
    }

    if (ticks_datetime == 100) {
        center_module = `%{c} ${data.datetime()}`; 
        ticks_datetime = 0;
    }

    var bar_data = `${left_module} ${center_module}`;
    console.log(bar_data);

    ticks_datetime++;
    ticks_workspace++;
};

while (true) {
    update();
    sleep.msleep(10);
}
