const express=require("express")

// Importing all the routes

// Creating express server
const app=express()

// Handling routes request
app.get("/", (req, res) => res.send('Welcome to the root route'));
app.get("/home", (req, res) => res.send('This is the home route'));
app.get("/login", (req, res) => res.send('This is the login route'));
app.listen((3000),()=>{
    console.log("Server is Running")
})

exports = {app}
