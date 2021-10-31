const express = require('express');
const router = express.Router();
const controller = require('./customer.controller');


//GET /api/customers
router.get('/customers', controller.getAllCustomers);

//GET /api/customers/:customId
router.get('/customers/:customId', controller.getCustomerById);

//POST /api/customers
router.post('/customers', controller.createNewCustomer);

//PUT /api/customers
router.put('/customers/:customId', controller.updateInfoCustomer);

//PATCH /api/customers/:customId
router.patch('/customers/:customId', controller.activeCustomer);

//DELETE /api/customers/:customId
router.delete('/customers/:customId', controller.deleteCustomer);



module.exports = router;
