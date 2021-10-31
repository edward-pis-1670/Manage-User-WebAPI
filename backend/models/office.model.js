module.exports = (sequelize, Sequelize) => {
    const Office = sequelize.define(
        'office',
        {
            officeCode: {
                type: Sequelize.INTEGER,
                allowNull: false,
                autoIncrement: true,
                primaryKey: true,
            },
            city: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            phone: {
                type: Sequelize.STRING,
                unique: true,
            },
            addressLine2: {
                type: Sequelize.STRING,
            },
            addressLine1: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            state: {
                type: Sequelize.STRING,
            },
            country: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            postalCode: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            terriory: {
                type: Sequelize.STRING,
                allowNull: false,
            },
        },
        {
            timestamps: false,
        }
    );
    return Office;
};
