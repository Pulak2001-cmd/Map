const express = require('express')
const cors=require('cors')
const app = express()
const pool=require('./db')

//middleware
app.use(cors())
app.use(express.json())

//all colleges
app.get("/colleges", async (req, res) => {
    // try {
    //   // const allColleges = await pool.query("SELECT * FROM colleges");
    //   const allColleges = await pool.query("SELECT * FROM colleges");
    //   console.log(allColleges.data);
    //   res.json(allColleges.rows);
    // } catch (err) {
    //   console.error(err.message);
    // }
    pool.execute("SELECT * FROM colleges", function(err, result) {
      if (err) {throw err;}

      console.log(result);
      res.json(result);
    })
  });
//array of districts 
app.get("/colleges/districts", async (req, res) => {
  pool.execute("SELECT district FROM colleges", function(err, result) {
    if (err) {throw err;}
    const temp = [];
    for(let i=0;i<result.length;i++) {
      
      if(!temp.includes(result[i].district)){
        
      temp.push(result[i].district)}
    }
    res.json(temp);
  })
  // try {
  //   const temp=[]
  //   const allColleges = await pool.query("SELECT district FROM colleges");
  //   console.log(allColleges.rows)
  //   for(let i=0;i<allColleges.rows.length;i++) {
      
  //     if(!temp.includes(allColleges.rows[i].district)){
        
  //     temp.push(allColleges.rows[i].district)}
  //   }
  //   res.json(temp);
  // } catch (err) {
  //   console.error(err.message);
  // }
});
//array of status
app.get("/colleges/statuses", async (req, res) => {
  pool.execute("SELECT status FROM colleges", function(err, result) {
    if (err) {throw err;}
    const temp = [];
    for(let i=0;i<result.length;i++) {
      
      if(!temp.includes(result[i].status)){
        
      temp.push(result[i].status)}
    }
    res.json(temp);
  })
});
app.get("/colleges/blocks", async (req, res) => {
  pool.execute("SELECT block FROM colleges", function(err, result){
    if (err) {throw err;}
    const temp = [];
    for (let i = 0; i < result.length; i++) {
      if (result[i].block !== null){
        if(!temp.includes(result[i].block)){
          temp.push(result[i].block)
        }
      } 
    }
    res.json(temp);
  })
})
//get districts plus their status that the user wants to See
app.get("/colleges/districts/statuses", async (req, res) => {
  try {
    const t=[]
    const d=[]
    const s=[]
    const allStatus = await pool.query("SELECT district,status FROM colleges");
    console.log(allStatus.rows)
    for(let i=0;i<allStatus.rows.length;i++) {
      
      if(!(d.includes(allStatus.rows[i].district)&&s.includes(allStatus.rows[i].status))){
        d.push(allStatus.rows[i].district)
        s.push(allStatus.rows[i].status)
      t.push(allStatus.rows[i])}
    }
    res.json(t);
  } catch (err) {
    console.error(err.message);
  }
});
//get a college by district
app.get("/colleges/:district", async (req, res) => {
    try {
        const { district } = req.params;
      
      console.log(req.params)
      pool.execute(`SELECT * FROM colleges WHERE district = "${district}"`, function (err, result) {
        if (err) {throw err;}
        res.json(result);
      })
      // const college = await pool.query("SELECT * FROM colleges WHERE district = $1", [district]);
  
      // res.json(college.rows);
      // console.log(college.rows[0]);
    } catch (err) {
      console.error(err.message);
    }
  });

app.get("/colleges/status/:status", async (req, res) => {
    try {
        const { status } = req.params;
      
      console.log(req.params)
      pool.execute(`SELECT * FROM colleges WHERE status = "${status}"`, function (err, result) {
        if (err) {throw err;}
        res.json(result);
      })
      // const college = await pool.query("SELECT * FROM colleges WHERE district = $1", [district]);
  
      // res.json(college.rows);
      // console.log(college.rows[0]);
    } catch (err) {
      console.error(err.message);
    }
  });

app.get("/colleges/block/:block", async (req, res) => {
    try {
        const { block } = req.params;
      
      console.log(req.params)
      pool.execute(`SELECT * FROM colleges WHERE block = "${block}"`, function (err, result) {
        if (err) {throw err;}
        res.json(result);
      })
      // const college = await pool.query("SELECT * FROM colleges WHERE district = $1", [district]);
  
      // res.json(college.rows);
      // console.log(college.rows[0]);
    } catch (err) {
      console.error(err.message);
    }
  });



  app.listen(5000,()=>{
    console.log('listening on port 6000')
})