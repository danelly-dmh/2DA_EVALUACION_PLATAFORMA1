//
//  ViewController.swift  
// <EVA2_4_RESTAURANTE> - <Esta aplicación muestra una lista de restaurantes con su respectiva imagen y descripción>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 08/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit
	//Los dataSource se encargan de cargar cargar los datos que va a mostrar la tabla en sus celdas
	//Los delegados son los que manejan los eventos disparados desde otra clase. En este caso la clase UITableView va a recibir ciertas acciones por parte de los usuarios y las va a delegar a nuestra clase ViewController.

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
	//Declaramos el arreglo de datos con los nombres de los restaurantes
    let Datos = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore",
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
	//Función tableView, didSelectRowAtIndexPath
	//Esta función nos desplegará un cuadro de alerta al seleccionar una fila
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {//lo que demos clic mostrar alert controller dato de lo que es el arreglo
        //El alert controller nos desplegará un mensaje con el nombre del restaurante que elijamos, dependiendo de la celda
		let controlador = UIAlertController(title: "Te encuentras en:", message: Datos[indexPath.row], preferredStyle: .Alert)
        //Le agregamos un alertAction para que podamos salir del alertController y continuar usando la app
		let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        controlador.addAction(btn)
        presentViewController(controlador, animated: true, completion: nil)
    }
    //Función tableView, cellForRowAtIndexPath
	//Se encarga del manejo de cada celda
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {//arreglo en la tabla ler cuando usa scroll
        //declaramos celda para enlazarse con la celda en fisico
		let celda = tableView.dequeueReusableCellWithIdentifier("mcelda") as! TableViewCellmia
        //Asigna los datos del arreglo a los objetos de la celda
		//index path indica el indice de la tabla para ver fila
		celda.lblNombre.text = Datos[indexPath.row] 
		celda.lblUbica.text = "Chihuahua"
        celda.lblDescrip.text = "Far Far away..."
        let ima = UIImage(named: img[indexPath.row]) 
		//llamar al arreglo de imagenes
        celda.lblImag.image = ima
        return celda
    }
	//Creamos el slider para la acción de compartir la actividad
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        //Declaramos una variable que nos lanzará la acción para compartir nuestra actividad.
		//en el handler declaramos la función que integra todos los objetos a compartir
		let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        return [compartirAct]
    }
    //Función comparteRest
	//Creamos esta función para que se agreguen los objetos a una publicación a traves del UIActivityViewController
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let mText = "Vine a comer en " + img[indexPath.row]
        let miImagen = UIImage(named: img[indexPath.row])
        let actiController = UIActivityViewController(activityItems: [mText, miImagen!], applicationActivities: nil)
        presentViewController(actiController,animated: true, completion : nil)
    }
    
}