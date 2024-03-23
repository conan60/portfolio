// import React from 'react';
// import ReactDOM from 'react-dom';
// import Home from './Home';

// ReactDOM.render(<Home />, document.getElementById('root'));

const http = require("http");

const host = 'localhost';
const port = 3000;

const requestListener = function (req, res) {
    res.setHeader("Content-Type", "application/json");
    res.writeHead(200);
    res.end(`{"message": "This is a JSON response"}`);
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});