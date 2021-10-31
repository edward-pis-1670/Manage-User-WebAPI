const dbConfig = require('../config/data.config');
const Sequelize = require('sequelize');


const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,

    pool: {
        max: dbConfig.pool.max,
        min: dbConfig.pool.min,
        acquire: dbConfig.pool.acquire,
        idle: dbConfig.pool.idle,
    },
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.customers = require('./customer.model')(sequelize, Sequelize);
db.employees = require('./employee.model')(sequelize, Sequelize);
db.offices = require('./office.model')(sequelize, Sequelize);


db.employees.hasMany(db.customers, {
    foreignKey: 'salesRepEmployeeNumber',
    onDelete: 'SET NULL',
    as: 'employee'
    
    
});
db.customers.belongsTo(db.employees, {
    foreignKey: 'salesRepEmployeeNumber',
    onDelete: 'SET NULL',
    as: 'customer'
});

db.employees.belongsTo(db.employees, {
    foreignKey: 'reportsTo',
})


db.offices.hasMany(db.employees, {
    foreignKey: 'officeCode',
    onDelete: 'CASCADE',
    as: 'staffOff'
})

db.employees.belongsTo(db.offices, {
    foreignKey: 'officeCode',
    onDelete: 'CASCADE',
    as:'offStaff'
})


module.exports = db;
