var http = require('http');
var port = require('./port');

var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("Merhaba\n");
});

// server.listen(port.number);
server.listen(8000);

