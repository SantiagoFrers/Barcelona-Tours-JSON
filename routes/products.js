var express = require('express');
var router = express.Router();
const productsController = require("../controllers/productsController");
/* const seccProdController = require('../controllers/seccProdController'); */


/* TODO LEVANTAR IMAGEN */
const multer = require('multer');
const path = require('path');

var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.resolve(__dirname, '../public/images/actividades/'))
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname)
  }
})

var upload = multer({
  storage: storage
})
// Require de Middlewares
const permisosMiddleware = require('../middlewares/permisosMiddleware');

//SECCIONES PRODUCTOS

router.get('/', productsController.root);
router.get('/seccion/:seccionId', productsController.seccion);

//DETALLE PRODUCTO
router.get("/detalle/:productId", productsController.detalle);

//CREAR PRODUCTO
router.get("/crear", permisosMiddleware.admin, productsController.crear);
router.post("/crear", upload.any(), productsController.guardar);

//EDITAR PRODUCTO
router.get('/editar/:productId', permisosMiddleware.admin, productsController.editar);
router.put('/editar/:productId', upload.any(), productsController.actualizado);


//ELIMINAR PRODUCTO
router.get('/eliminar/:productId', permisosMiddleware.admin, productsController.editar);
router.delete('/eliminar/:productId', productsController.eliminar);

module.exports = router;