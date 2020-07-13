const express = require('express');
const router = express.Router();
const homeController = require('../controllers/homeController');


/* GET home page. */
router.get('/', homeController.root);

//RUTAS SIN MODURALIZAR

//FAQs
router.get('/faqs', function (req, res, next) {
  res.render('faqs', {
    title: 'FAQs'
  });
});

//WORK-WITH-US
router.get('/work-with-us', function (req, res, next) {
  res.render('worKWithUs', {
    title: 'Trabaja con nosotros'
  });
});

//CONTACTO
router.get('/contact', function (req, res, next) {
  res.render('contact', {
    title: 'Contactanos'
  });
});

/* TODO SOLO PARA PRUEBAS, BORRAR PARA LA ENTREGA DEL 5º SPRINT */
//PRUEBA SEQUELIZE
router.get('/pendorcho', homeController.pendorcho)

module.exports = router;