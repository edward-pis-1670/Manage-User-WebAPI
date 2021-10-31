const db = require('../../models/index.models');
const Employee = db.employees;

exports.getAllEmployees = async (req, res) => {
    let employees = await Employee.findAll();

    if (employees) {
        return res.status(200).send({ success: true, data: employees });
    }
    res.status(404).send({
        success: false,
        message: 'Cannot retrieve all employees',
        data: null,
    });
};

exports.getEmployeeById = async (req, res) => {
    let employeeNumber = req.params.id;

    const employee = await Employee.findOne({
        where: { employeeNumber: employeeNumber },
    });

    if (employee) {
        return res.status(200).send({ success: true, data: employee });
    }
    res.status(404).send({
        success: false,
        message: 'Cannot found employee',
        data: null,
    });
};

exports.createNewEmployee = async (req, res) => {
    if (!req.body) {
        return res.status(400).send({
            success: false,
            message: 'Content cannot be empty',
        });
    }

    let newEmployee = await Employee.create(req.body);

    if (newEmployee) {
        return res.status(201).send({
            success: true,
            message: 'Create a new employee successfully!',
            data: newEmployee,
        });
    }
    res.status(500).send({
        success: false,
        message: 'Cannot create new employee',
    });
};

exports.updateInfoEmployee = async (req, res) => {
    let employeeNumber = req.params.id;

    const results = await Employee.update(req.body, {
        where: { employeeNumber: employeeNumber },
    });

    if (results) {
        return res
            .status(200)
            .send({ success: true, message: 'Update successfully' });
    }

    res.status(200).send({ success: false, message: 'Nothing changes' });
};

exports.deleteEmployee = async (req, res) => {
    let employeeNumber = req.params.id;

    const results = await Employee.destroy({
        where: { employeeNumber: employeeNumber },
    });

    if (results) {
        return res.status(200).send({ success: true, message: 'Deleted!' });
    }

    res.status(403).send({ success: false, message: 'Cannot delete!' });
};
