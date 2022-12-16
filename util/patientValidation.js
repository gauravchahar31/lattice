const sequelize = require('./database')
const Psychiatrists = require('../models/psychiatrists')

function patientValidation(patientData){
    if(!patientData.name || !isNaN(patientData.name)){
        return "Please Enter Patient Name"
    }
    if(!patientData.address || patientData.address.length < 10){
        return "Please Enter Valid Patient Address"
    }
    if(patientData.email){
        if(!validateEmail(patientData.email)){
            return "Please Enter Valid Patient Email"
        }
    }
    else{
        return "Please Enter Patient Email"
    }
    if(patientData.phoneNo){
        if(!validatePhoneNo(patientData.phoneNo)){
            return "Please Enter Valid Patient PhoneNo"
        }
    }
    else{
        return "Please Enter Patient Phone Number"
    }
    if(patientData.password){
        if(!validatePassword(patientData.password)){
            return "Please Enter Valid Patient Password"
        }
    }
    else{
        return "Please Enter Patient Password"
    }
    if(!patientData.photo){
        return "Please Provide Patient Photo"
    }
    if(patientData.psychiatristID){
        if(!validatePsychiatrist(patientData.psychiatristID)){
            return "Please Enter Valid PsychiatristID"
        }
    }
    else{
        return "Please Enter Psychiatrist ID"
    }
    return true
}

function validateEmail(patientEmail){
    var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
    if(patientEmail.match(validRegex)){
        return true;
    }
    return false;
}

function validatePassword(patientPassword){
    if(patientPassword < 8 && patientPassword > 15){
        return false
    }
    var lowerCaseLetters = /[a-z]/;
    var upperCaseLetters = /[A-Z]/;
    var numbers = /[0-9]/;
    if(!patientPassword.match(lowerCaseLetters)){
        console.log("Test Fail 1")
        return false
    }
    if(!patientPassword.match(upperCaseLetters)){
        console.log("Test Fail 2")
        return false
    }
    if(!patientPassword.match(numbers)){
        console.log("Test Fail 3")
        return false
    }
    return true
}

function validatePhoneNo(patientPhoneNo){
    var countryCode = /^[+]/g;
    if(!patientPhoneNo.match(countryCode)){
        return false;
    }
    return true;
}

async function validatePsychiatrist(psychiatrist){
    const psychiatristId = await Psychiatrists.findOne({
        where : {
            id : psychiatrist
        }
    })
    if(psychiatristId){
        return true
    }
    return false;
}

module.exports = patientValidation