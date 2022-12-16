const express = require('express')
const bodyParser = require('body-parser')
const app = express();
const router = express.Router()

const sequelize = require('../util/database')
const Hospitals = require('../models/hospitals')
const Psychiatrists = require('../models/psychiatrists')
const Patients = require('../models/patients')

app.use(bodyParser.urlencoded({extended: true}))
app.use(bodyParser.json())

router.get('/', async (req, res) => {
    const hospitalID = req.query.HospitalID;
    const checkHospital = await Hospitals.findOne({
        where: {
            id: hospitalID
        }
    })
    if(checkHospital){
        try{
            const result = [];
            const hospitalName = await sequelize.query("SELECT name AS HospitalName FROM hospitals WHERE id = ?;", { replacements: [hospitalID], type: sequelize.QueryTypes.SELECT });
            const psychiatristsCount = await sequelize.query("SELECT COUNT(*) AS TotalPsychiatrists FROM psychiatrists WHERE HospitalId = ?;", { replacements: [hospitalID], type: sequelize.QueryTypes.SELECT });
            const patientsCount = await sequelize.query("SELECT COUNT(q.name) AS TotalPatients FROM patients q JOIN psychiatrists p ON p.id = q.PsychiatristId WHERE p.HospitalId = ?;", { replacements: [hospitalID], type: sequelize.QueryTypes.SELECT });
            const psychiatristsPatientData = await sequelize.query("SELECT p.id, p.name, COUNT(q.name) AS PatientCount from psychiatrists p LEFT JOIN patients q ON p.id = q.PsychiatristId WHERE p.HospitalId = ? GROUP BY p.id, p.name;", { replacements: [hospitalID], type: sequelize.QueryTypes.SELECT });        
            result.push(hospitalName);
            result.push(psychiatristsCount);
            result.push(patientsCount);
            result.push(psychiatristsPatientData);
            res.status = 200;
            res.send(result);
        }
        catch(err){
            console.log(err)
            res.status(500)
            res.send("Internal Server Error")
        }
    }
    else{
        res.status(403)
        res.send("Please Provide Correct Hospial ID")
    }
})

router.get('*', (req, res) => {
    res.status(404)
    res.send("Page Not Found")
})

module.exports = router