var express = require('express');
var router = express.Router();
var fs = require("fs");
const bcrypt = require("bcrypt");
const path = require('path');
const {
  check,
  validationResult,
  body
} = require("express-validator");
const multer = require("multer");
const userController = require("../controllers/userController");

//Path a los JSON
const userFilePath = path.join(__dirname, '../data/usuarios.json');
const users = JSON.parse(fs.readFileSync(userFilePath, 'utf-8'));

//Almacenamiento de Avatar
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.resolve(__dirname, '../public/avatar'))
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname)
  }
})

var upload = multer({ storage: storage })

// Require de Middlewares
const permisosMiddleware = require ('../middlewares/permisosMiddleware');

//RUTAS
/* GET users listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});

//CREAR CUENTA Y GUARDAR
router.get("/registrar", userController.crear);
router.post("/registrar", upload.any(), [
  check("nombre").isLength({
    min: 5
  }).withMessage("El nombre tiene que contener un minimo de 5 caracteres"),
  check("apellido"),
  check("email").isEmail().withMessage("El mail debe ser válido"),
  //Validacion de main con respecto a DB (json en este caso)
  body("email").custom(function (value) {
    for (let i = 0; i < users.length; i++) {
      if (users[i].email == value) {
        return false;
      }
    }
    return true;
  }).withMessage("Este mail ya esta en uso!"),
  //Validacion de contrasenas
  check("pass").isLength({
    min: 8
  }).withMessage("La contraseña tiene que tener al menos 8 caracteres"),
  check("passconfirm").isLength({
    min: 8
  }).withMessage("La contraseña tiene que tener al menos 8 caracteres"),
  body('pass').custom((value, {
    req
  }) => {
    if (value !== req.body.passconfirm) {
      throw new Error('Las contraseñas no coinciden');
    }
    return true;
  })
], userController.crearUsuario);

//INGRESAR CUENTA
router.get("/ingresar", userController.login);
router.post("/ingresar", userController.iniciarSesion);

//EDITAR CUENTA Y GUARDAR
router.get("/editar/:idUser", permisosMiddleware.user, userController.editar);
router.put("/editar/:idUser", userController.editarUsuario);

//ELIMINAR CUENTA
router.get("/eliminar/:idUser",permisosMiddleware.user, userController.eliminar);
router.delete("/eliminar/:idUser", userController.eliminarUsuario);

/* prueba de session */
/* router.get("/prueba", function(req,res) {
  res.send(req.session.usuarioLogueado)
}); */

module.exports = router;