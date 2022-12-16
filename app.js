const express = require('express')
const app = express()
const bodyParser = require('body-parser')

const path = require('path')
const sequelize = require('./util/database')
const Hospitals = require('./models/hospitals')
const Psychiatrists = require('./models/psychiatrists')
const Patients = require('./models/patients')

const patientsAPI = require('./API/patients')
const hospitalsAPI = require('./API/hospitals')

app.use(bodyParser.urlencoded({extended: true}))
app.use(bodyParser.json())

app.use('/api/patients', patientsAPI)
app.use('/api/hospitals', hospitalsAPI)

app.get('/', (req, res) => {
    res.status(200)
    res.sendFile(path.join(__dirname + '/src/index.html'))
})

app.get('*', (req, res) => {
    res.status(404)
    res.end('Page Not Found')
})

Patients.belongsTo(Psychiatrists, {
    constructs: true, onDelete: 'CASCADE'
})
Psychiatrists.hasMany(Patients)

Psychiatrists.belongsTo(Hospitals, {
    constructs: true, onDelete: 'CASCADE'
})
Hospitals.hasMany(Psychiatrists)



sequelize.sync()
.then( result => {
    app.listen(3000, () => {
        console.log("Server Started")
    })
})
.catch( err => {
    console.log("Database Connection Error : " + err)
})