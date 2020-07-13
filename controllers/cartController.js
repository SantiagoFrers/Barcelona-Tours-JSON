const fs = require('fs');
const path = require('path');

const productsFilePath = path.join(__dirname, '../data/tours.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));


const pdtosRecomendados = products.filter(pdto => pdto.vistaHome == 'recomendados');

const controllerController = {
    carrito: function (req, res) {
        res.render('carrito', {
            products,
            pdtosRecomendados

        });
    }
};

module.exports = controllerController;