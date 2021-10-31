const db = require('../../models/index.models');
const Customer = db.customers;

exports.getAllCustomers = async (req, res) => {
    let customers = await Customer.findAll();

    if (customers) {
        res.status(200).send({ success: true, data: customers });
        return;
    } else {
        res.status(404).send({
            success: false,
            message: 'Cannot retrieve all customers',
            data: null,
        });
    }
};

exports.createNewCustomer = async (req, res) => {
    if (!req.body) {
        res.status(400).send({
            success: false,
            message: 'Content cannot be empty',
        });
        return;
    }

    let newCustomer = await Customer.create(req.body);

    if (newCustomer) {
        res.status(201).send({
            success: true,
            message: 'Created!',
            data: newCustomer,
        });
    } else {
        res.status(500).send({
            success: false,
            message: 'Cannot create new customer',
        });
    }
};

exports.activeCustomer = async (req, res) => {
    const customerNumber = req.params.customId;

    const results = await Customer.update(
        { salesRepEmployeeNumber: req.body.newId },
        { where: { customerNumber: customerNumber } }
    );

    if (results) {
        return res
            .status(200)
            .send({ success: true, message: 'Actived successfully' });
    }

    res.status(200).send({ success: false, message: 'Nothing changes' });
};

exports.updateInfoCustomer = async (req, res) => {
    const customerNumber = req.params.customId;

    const results = await Customer.update(req.body, {
        where: { customerNumber: customerNumber },
    });

    if (results) {
        return res
            .status(200)
            .send({ success: true, message: 'Updated successfully' });
    }

    res.status(200).send({ success: false, message: 'Nothing changes' });
};

exports.deleteCustomer = async (req, res) => {
    let customerNumber = req.params.customId;

    const results = await Customer.destroy({
        where: { customerNumber: customerNumber },
    });

    if (results == 1) {
        return res.status(200).send({ success: true, message: 'Deleted!' });
    }

    res.status(403).send({ success: false, message: 'Cannot delete!' });
};

exports.getCustomerById = async (req, res) => {
    let customerNumber = req.params.customId;

    const customer = await Customer.findOne({
        where: { customerNumber: customerNumber },
    });

    if (customer) {
        return res.status(200).send({ success: true, data: customer });
    }
    res.status(404).send({
        success: false,
        message: 'Cannot found employee',
        data: null,
    });
};
