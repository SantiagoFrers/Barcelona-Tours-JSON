/* TODO SI NO LO USAMOS BORRAR */

/* const fs = require('fs');
const path = require('path');

const productsFilePath = path.join(__dirname, '../data/tours.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

const toThousand = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");

const productos = products.filter(pdto => pdto.descripcion == 'En esta vista no solo nos adentraremos en el lugar más apasionante de Barcelona, sino que subiremos a una de sus. ¡Todo sin esperar colas!');
const categoriaEspectaculos = products.filter(pdto => pdto.categoria == 'espectaculos');
const categoriaTours = products.filter(pdto => pdto.categoria == 'tours');
const categoriaTalleres = products.filter(pdto => pdto.categoria == 'talleres');
const categoriaDeporte = products.filter(pdto => pdto.categoria == 'deporte');
const categoriaArte = products.filter(pdto => pdto.categoria == 'Arte');
const categoriaBelleza = products.filter(pdto => pdto.categoria == 'Belleza');
 */

/* Root - Show all products*/
/* const seccProdController = {
    root: (req, res) => {
        res.render('seccproductos', {
            productos
        });
    },

    espectaculos: function (req, res) {
        res.render("seccproductos", {
            title: "Espectaculos",
            categoriaEspectaculos
        })
    },
    tours: function (req, res) {
        res.render("seccproductos", {
            title: "Tours y Paseos",
            categoriaTours
        })
    },
    talleres: function (req, res) {
        res.render("seccproductos", {
            title: "Talleres y Clases",
            categoriaTalleres
        })
    },
    deporte: function (req, res) {
        res.render("seccproductos", {
            title: "Deporte y Aventura",
            categoriaDeporte
        })
    },
    arte: function (req, res) {
        res.render("seccproductos", {
            title: "Arte y Cultura",
            categoriaArte
        })
    },
    belleza: function (req, res) {
        res.render("seccproductos", {
            title: "Belleza y Salud",
            categoriaBelleza
        })
    },
  
}
module.exports = seccProdController; */