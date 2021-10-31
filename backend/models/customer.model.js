module.exports = (sequelize, Sequelize) => {
    const Customer = sequelize.define(
        'customer',
        {
            customerNumber: {
                type: Sequelize.INTEGER,
                allowNull: false,
                autoIncrement: true,
                primaryKey: true,
            },
            customerName: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            contactLastName: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            contactFirstName: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            phone: {
                type: Sequelize.STRING,
                allowNull: false,
                unique: true,
            },
            addressLine1: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            addressLine2: {
                type: Sequelize.STRING,
            },
            city: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            state: {
                type: Sequelize.STRING,
            },
            postalCode: {
                type: Sequelize.STRING,
            },
            country: {
                type: Sequelize.STRING,
                allowNull: false,
            },

            creditLimit: {
                type: Sequelize.INTEGER,
                allowNull: false,
            },
        },
        { timestamps: false }
    );

    return Customer;
};
