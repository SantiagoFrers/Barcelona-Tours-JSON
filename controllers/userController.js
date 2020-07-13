const fs = require('fs');
const path = require('path');
const bcrypt = require("bcrypt");
const {
    check,
    validationResult,
    body
} = require("express-validator");


const userFilePath = path.join(__dirname, '../data/usuarios.json');
const users = JSON.parse(fs.readFileSync(userFilePath, 'utf-8'));

let userController = {
    //REQUIERO FORMULARIO DE REGISTRO
    crear: function (req, res) {
        res.render("createAccount", {
            title: "Registrar"
        });
    },
    //GUARDO EL NUEVO USUARIO EN Usuarios.json
    crearUsuario: function (req, res) {
        let errors = validationResult(req);

        if (errors.isEmpty()) {
            let nuevoUsuario = {
                id: users[users.length - 1].id + 1,
                nombre: req.body.nombre,
                apellido: req.body.apellido,
                email: req.body.email,
                contrasena: bcrypt.hashSync(req.body.pass, 10),
                avatar: req.files[0].filename,
                userType: "user"
            };

            let finalUsers = [...users, nuevoUsuario]
            fs.writeFileSync(userFilePath, JSON.stringify(finalUsers, null, ' '));
            res.redirect("/");

        } else {
            res.render("createAccount", {
                errors: errors.errors
            });
        }
    },
    //REQUIERO FORMULARIO DE LOGGEO
    login: function (req, res) {
        res.render("signIn", {
            title: "Ingresar"
        });
    },
    //INICIO SESION
    iniciarSesion: function (req, res) {
        for (let i = 0; i < users.length; i++) {
            if(users[i].email == req.body.email && bcrypt.compareSync(req.body.password, users[i].contrasena)) {
                let usuarioEntrando = users[i];
                req.session.usuarioLogueado = usuarioEntrando;
                
                    //COOKIE "recordame"
                if (req.body.recordame != undefined){
                    res.cookie('recordame',
                    usuarioEntrando , { maxAge: 60000 } );
                }
                res.redirect("/");
            }

        }
        res.render("signIn", {
            errors: [ {"msg": "Los datos ingresados son invalidos"} ]
        });
    },

    //REQUIERO FORMULARIO DE CUENTA EXISTENTE
    editar: function (req, res) {
        let idUser = req.params.idUser;
        let userToEdit = users.find(user => user.id == idUser);

        res.render("userEdit", {
            userToEdit: userToEdit
        });
    },
    //GUARDO LA EDICION DEL USUARIO
    editarUsuario: function (req, res) {
        let idUser = req.params.idUser;
        let userToEdit = users.find(user => user.id == idUser)

        userToEdit = {
            id: userToEdit.id,
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            email: req.body.email,
            contrasena: bcrypt.hashSync(req.body.pass, 10),
            avatar: 0,
            userType: "user"
        };

        let newUser = users.map(users => {
            if (users.id == userToEdit.id) {
                return users = {
                    ...userToEdit
                };
            }
            return users;
        })

        fs.writeFileSync(userFilePath, JSON.stringify(newUser, null, ' '));
        res.redirect('/');
    },
    //REQUIERO FORMULARIO DE ELIMINACION DE CUENTA
    eliminar: function (req, res) {
        let idUser = req.params.idUser;
        let userToDelete = users.find(user => user.id == idUser);

        res.render("userDelete", {
            userToDelete: userToDelete
        });
    },
    //ELIMINO LA CUENTA
    eliminarUsuario: function (req, res) {
        let idUser = req.params.idUser;
        let finalUser = users.filter(user => user.id != idUser);
        fs.writeFileSync(userFilePath, JSON.stringify(finalUser, null, ' '));
        res.redirect('/');
    }
};

module.exports = userController;