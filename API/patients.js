const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const router = express.Router()

const sequelize = require('../util/database')
const Patients = require('../models/patients')

app.use(bodyParser.urlencoded({extended: true}))
app.use(bodyParser.json())

const Patient = require('../models/patients')
const patientValidation = require('../util/patientValidation')

router.post('/', async (req, res) => {
    console.log(req.body)
    const validationResult = patientValidation(req.body)
    if(validationResult === true){
        try{
            const pushPatient = await Patient.create({
                name: req.body.name,
                address: req.body.address,
                email: req.body.email,
                phoneNumber: req.body.phoneNo,
                password: req.body.password,
                photo: req.body.photo,
                PsychiatristId: req.body.psychiatristID
            })
            res.status(200)
            res.send("Patient Details Saved Suxxessfully")
        }
        catch(err){
            console.log(err)
            res.status(500)
            res.send("Internal Server Error")
        }
    }
    else{
        res.status(406)
        res.send(validationResult);
    }
})

router.get('*', (req, res) => {
    res.statusCode(404)
    res.send("Page Not Found")
})

module.exports = router