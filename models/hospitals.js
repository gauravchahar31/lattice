const Sequelize = require('sequelize')
const sequelize = require('../util/database')

const Hospitals = sequelize.define('hospitals', {
    id : {
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    name : {
        type: Sequelize.STRING
    }
}, {
    timestamps: false,
    createdAt: false,
    updatedAt: false
})

module.exports = Hospitals;