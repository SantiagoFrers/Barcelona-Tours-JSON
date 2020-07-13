const fs = require('fs');
const path = require('path');

const productsFilePath = path.join(__dirname, '../data/tours.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const pdtosbuscados = products.filter(pdto => pdto.vistaHome == 'buscados');
const pdtosRecomendados = products.filter(pdto => pdto.vistaHome == 'recomendados');

let db = require ("../database/models")

const toThousand = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");

const controller = {
	root: (req, res) => {
		res.render('index', {
			pdtosbuscados,
			pdtosRecomendados,
			thousandGenerator: toThousand
		});
	},
	/* TODO SOLO PARA PRUEBAS, BORRAR PARA LA ENTREGA DEL 5º SPRINT */
	pendorcho: (req,res) =>{
		db.tours.findAll()
			.then(function(tours){
				res.render('pendorcho', {tours:tours});	
			})
	}

}

module.exports = controller;