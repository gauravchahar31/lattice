const Sequelize = require('sequelize')
const sequelize = require('../util/database')

const Patient = sequelize.define('patients', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: Sequelize.STRING
    },
    address: {
        type: Sequelize.STRING,
        allowNull: false
    },
    email: {
        type: Sequelize.STRING,
        allowNull: false
    },
    phoneNumber: {
        type: Sequelize.STRING,
        allowNull: false
    },
    password: {
        type: Sequelize.STRING,
        allowNull: false
    },
    photo: {
        type: Sequelize.STRING,
        allowNull: false
    },
    PsychiatristId: {
        type: Sequelize.INTEGER,
        allowNull: false
    }
}, {
    timestamps: false,
    createdAt: false,
    updatedAt: false
})

module.exports = Patient;