//
//  ViewController.swift
// <RESTAURANTE> - <Esta aplicación muestra una lista de restaurantes con su respectiva imagen y descripción>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 23/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit
	//Los dataSource se encargan de cargar cargar los datos que va a mostrar la tabla en sus celdas
	//Los delegados son los que manejan los eventos disparados desde otra clase. En este caso la clase UITableView va a recibir ciertas acciones por parte de los usuarios y las va a delegar a nuestra clase ViewController.
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //Declaramos el TableView para poder conectarlo al código:
	@IBOutlet weak var tableV: UITableView!
	//Declaramos el arreglo de datos con los nombres de los restaurantes
    let Datos = ["BarraFina","BourkestreetBakery","CafedeAdend","CafeLoisl","cafelore",
        "confessional","donostia","fiveleaves","forkeerestaurant",
        "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
        "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    //Declaramos el arreglo de imagenes previamente agregadas en Assets
    let img = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
        "confessional","donostia","fiveleaves","forkeerestaurant",
        "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster",
        "posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función tableView
	//En esta función vamos a indicar los datos que se devolverán en filas
	//Indicamos que regrese el arreglo de nombres de restaurante
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.count
    }
    //func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {//lo que demos clic mostrar alert controller dato de lo que es el arreglo
    // let controlador = UIAlertController(title: "Te encuentras en:", message: Datos[indexPath.row], preferredStyle: .Alert)
    // let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
	//   controlador.addAction(btn)
    //  presentViewController(controlador, animated: true, completion: nil)
	// }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //declaramos celda para enlazarse con la celda en fisico
		let celda = tableView.dequeueReusableCellWithIdentifier("mcelda") as! TableViewCellmia
		//index path indica el indice de la tabla para ver fila
        celda.lblNombre.text = Datos[indexPath.row] 
        celda.lblUbica.text = "Chihuahua"
        celda.lblDescrip.text = "Far Far away..."
		//llamar al arreglo de imagenes
        let ima = UIImage(named: img[indexPath.row]) 
        celda.lblImag.image = ima
        return celda
    }
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        //Declaramos una variable que nos lanzará la acción para compartir nuestra actividad.
		//en el handler declaramos la función que integra todos los objetos a compartir
		let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
    }
    //Función comparteRest
	//Creamos esta función para que se agreguen los objetos a una publicación a traves del UIActivityViewController
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        //Declaramos el texto que se enlaza a la publicación junto con la imagen del arreglo
		let mText = "Vine a comer en " + img[indexPath.row]
        let miImagen = UIImage(named: img[indexPath.row])
        let actiController = UIActivityViewController(activityItems: [mText, miImagen!], applicationActivities: nil)
        presentViewController(actiController,animated: true, completion : nil)
    }
	//Función prepareForSegue
	//Enlazamos un segue desde nuestra aplicación al código
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	//Indicamos que si se cumple que el segue tenga el nombre del identifier correcto
	//En el nuevo viewControler se desplieguen las variables del ViewControllerImagen
        if segue.identifier == "detalle"{
            if let indexPath = tableV.indexPathForSelectedRow{
            let detalleVC = segue.destinationViewController as! ViewControllerImagen
            detalleVC.sNomImg = img[indexPath.row]
            detalleVC.sDetalles = "Estas en: " + img[indexPath.row]
            }
        }
    }   
}