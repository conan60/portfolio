// import React from 'react';
// import ReactDOM from 'react-dom';
// import Home from './Home';

// ReactDOM.render(<Home />, document.getElementById('root'));

const http = require("http");
const port = 3000;

const requestListener = function (req, res) {
    res.setHeader("Content-Type", "application/json");
    res.writeHead(200);
    res.end(`{"message": "Nostal aptonia Malek"}`);
};

const server = http.createServer(requestListener);
server.listen(port, () => {
    console.log(`Server is running on port:${port}`);
});