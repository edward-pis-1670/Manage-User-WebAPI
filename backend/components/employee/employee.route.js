const express = require('express');
const router = express.Router();
const controller = require('./employee.controller');

//GET /api/employees
router.get('/employees', controller.getAllEmployees);

//GET /api/employees/:id
router.get('/employees/:id', controller.getEmployeeById);

//POST /api/employees/
router.post('/employees', controller.createNewEmployee);

//PUT /api/employees/:id
router.put('/employees/:id', controller.updateInfoEmployee);

//DELETE /api/employees/:id
router.delete('/employees/:id', controller.deleteEmployee);

module.exports = router;
