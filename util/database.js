const Sequelize = require('sequelize')
const sequelize = new Sequelize(
    'NDdO6GxCzT', 'NDdO6GxCzT', 'f9T5Hlun1e', {
        dialect: 'mysql',
        host: 'remotemysql.com'
    }
)

module.exports = sequelize;