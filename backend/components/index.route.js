const customerRouter = require('./customer/customer.route');
const employeeRouter = require('./employee/employee.route');

function route(app) {
    app.use('/api', customerRouter);
    app.use('/api', employeeRouter);
}

module.exports = route;
