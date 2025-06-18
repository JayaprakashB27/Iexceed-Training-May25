var express = require('express');
var mysql = require('mysql2');
var app = express();

app.use(express.json());

const conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: 'Password123#@!',
    database: 'students',
});

conn.connect((err) => {
    if (err) {
        console.log(err);
    } else {
        console.log("Connected with DB");
    }
});

app.post("/post", (req, res) => {
    const id = req.body.id;
    const name = req.body.name;
    const age = req.body.age;
    const dept = req.body.dept;

    conn.query("INSERT INTO stuinfo VALUES (?, ?, ?, ?)", [id, name, age, dept], (err, result) => {
        if (err) {
            console.log(err);
        } else {
        res.send("Data inserted successfully..");
        }
    });
});

app.listen(4000, (err) => {
    if (err) {
        console.log(err);
    } else {
        console.log("Listening on port 3000");
    }
});


app.get("/fetch",(req,res)=>{
   conn.query("select *  from stuinfo",(err,result,fields)=>{
    if(err){
        console.log(err);
    }
    else{
        res.send(result);
        console.log(result);
    }
   });
 });


 app.get("/fetch/:id",(req,res)=>{
    const id = req.params.id;

     conn.query("select * from stuinfo where id = ? ",[id],(err,result,fields)=>{
        if(err){
            console.log(err);
        }
        else{
            res.send(result);
        }

     });
 });


 app.put("/update/:id", (req,res)=>{
         const id = req.params.id;
         const name = req.body.name;
         const age = req.body.age;
         const dept = req.body.dept;

         conn.query("update stuinfo set dept = ? where id = ?",[dept,id],(err,result)=>{
            if(err){
                console.log(err);
            }
            else{
                res.send("data updated...");
            }
         });
 });


 app.delete("/delete/:id", (req,res)=> { 
    const id = req.params.id;
    conn.query("delete from stuinfo where id  = ? ",[id] ,(err,result)=> {
        if(err){
            console.log(err);
        }
        else{
            res.send("data deleted...");
        }
    });
 });