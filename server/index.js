// import everything express, mongoose(for the data base of MongoDB ) socket.io@2.3.0(a particular version)

const express = require('express');
const http = require('http');
const  mongoose = require('mongoose');

const app = express();
const port = process.env.PORT || 3000;

var server = http.createServer(app);

// var socketio = require("socket.io");
// var io = socketio(server); // instead of doing this we are doing its shortcut in the below line

var io = require("socket.io")(server);


app.use(express.json());

const DB = "mongodb+srv://test1:test_123@cluster0.pjpjjyo.mongodb.net/?retryWrites=true&w=majority";

io.on('connection', (socket) =>{
    console.log("connected");
})

mongoose.connect(DB).then(() => {
    console.log("Connected successfully");
}).catch((e)=> {
    console.log(e);
})


server.listen(port, "0.0.0.0", function(){
    // console.log("Server is listening on port " + port);
    console.log(`Server is listening on port ${port}`);

}
)

