const Sequelize = require('sequelize')
const sequelize = require('../util/database')

const Psychiatrist = sequelize.define('psychiatrists', {
    id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    name: {
        type: Sequelize.STRING,
        allowNull: false
    },
    HospitalId: {
        type: Sequelize.INTEGER,
        allowNull: false
    }
},{
    timestamps: false,
    createdAt: false,
    updatedAt: false
})

module.exports = Psychiatrist;