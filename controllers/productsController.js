const fs = require('fs');
const path = require('path');

const productsFilePath = path.join(__dirname, '../data/tours.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const toThousand = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");

/* Detalle productos */
let productosController = {

	/* VER TODOS LOS PRODUCTOS */
	root: (req, res) => {
		res.render('todosProductos', {
			products
		});
	},

	/* VER UN RUBRO ESPECIFICO DE PRODUCTOS */
	seccion: (req, res) => {
		let pdtoID = req.params.seccionId;
		let seccionProductos = products.filter(product => product.categoria == pdtoID);
		let catID = req.params.seccionId;
		let categoriaFind = products.find(product => product.categoria == catID);

		res.render('seccproductos', {
			products,
			seccionProductos,
			categoriaFind

		});
	},

	/* INGRESAR DENTRO DE LA FICHA DE UN PRODUCTO */
	detalle: (req, res) => {
		let pdtoID = req.params.productId;
		let productFind = products.find(pdto => pdto.id == pdtoID);

		res.render('productos', {
			productFind,
			thousandGenerator: toThousand
		});
	},

	/* CREAR PRODUCTO */
	crear: function (req, res) {
		res.render("cargaProducto", {
			title: "Nueva actividad"
		});
	},

	/* GUARDAR UN PRODUCTO CREADO */
	guardar: (req, res, next) => {
		req.body.precio = Number(req.body.precio);
		let newProduct = {
			id: products[products.length - 1].id + 1,
			...req.body,
			image: req.files[0].filename,
			imageGrande: req.files[1].filename

		};
		let finalProducts = [...products, newProduct];
		fs.writeFileSync(productsFilePath, JSON.stringify(finalProducts, null, ' '));
		res.redirect('/productos');
	},

	/* EDITAR UN PROUDCTO */
	editar: (req, res,next) => {
		let pdtoID = req.params.productId;
		let productToEdit = products.find(product => product.id == pdtoID)

		res.render('editDelete', {
			productToEdit
		});
	},

	actualizado: (req, res) => {
		let pdtoID = req.params.productId;
		let productToEdit = products.find(product => product.id == pdtoID)

		req.body.precio = Number(req.body.precio);
		productToEdit = {
			id: productToEdit.id,
			...req.body,
			image: productToEdit.image,
		};

		let newProducts = products.map(product => {
			if (product.id == productToEdit.id) {
				return product = {
					...productToEdit
				};
			}
			return product;
		})

		fs.writeFileSync(productsFilePath, JSON.stringify(newProducts, null, ' '));
		res.redirect('/');
	},

	eliminar: (req, res) => {
		let productId = req.params.productId;
		let finalProducts = products.filter(pdto => pdto.id != productId);
		fs.writeFileSync(productsFilePath, JSON.stringify(finalProducts, null, ' '));
		res.redirect('/');
	}
};

module.exports = productosController;