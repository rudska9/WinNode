mysql = require('mysql')
con = mysql.createConnection({
  host : "localhost"
  user : "muncc11"
  password : "rudska3124"
})

con.connect((err) ->
  if(err) then throw err
  console.log("Connected!")
)