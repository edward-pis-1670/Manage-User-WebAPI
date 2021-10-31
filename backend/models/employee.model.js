module.exports = (sequelize, Sequelize) => {
    const Employee = sequelize.define(
        'employee',
        {
            employeeNumber: {
                type: Sequelize.INTEGER,
                allowNull: false,
                autoIncrement: true,
                primaryKey: true,
            },

            firstName: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            lastName: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            extension: {
                type: Sequelize.STRING,
                allowNull: false,
            },
            email: {
                type: Sequelize.STRING,
                allowNull: false,
                unique: true,
            },
            jobTitle: {
                type: Sequelize.STRING,
                allowNull: false,
            },
        },
        { timestamps: false }
    );
    return Employee;
};
