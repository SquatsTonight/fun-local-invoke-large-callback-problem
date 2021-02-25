
'use strict';
var express = require('express');

// Set up server.
var app = express();

// Start server.
var server = app.listen(9000, function() {
    console.log("========app listen");
});
server.timeout = 0; // never timeout
// See https://nodejs.org/dist/latest-v8.x/docs/api/http.html#http_server_keepalivetimeout
server.keepAliveTimeout = 0; // keepalive, never timeout

// Catch user function error and output to function logs.
process.on('uncaughtException', function(err) {
    console.log(err.stack);
    console.error(err.stack);
});
