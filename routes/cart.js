const express = require('express');
const router = express.Router();
const cartController= require ('../controllers/cartController');

// Require de Middlewares
const permisosMiddleware = require ('../middlewares/permisosMiddleware');

//CARRITO
router.get('/', permisosMiddleware.user, cartController.carrito);


module.exports = router;