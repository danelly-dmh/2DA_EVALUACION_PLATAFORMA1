//
//  ViewController.swift
// <EVA2_3_RESTAURANTE> - <Esta aplicación muestra una lista de restaurantes con su respectiva imagen y descripción>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 08/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit
	//Los dataSource se encargan de cargar cargar los datos que va a mostrar la tabla en sus celdas
	//Los delegados son los que manejan los eventos disparados desde otra clase. En este caso la clase UITableView va a recibir ciertas acciones por parte de los usuarios y las va a delegar a nuestra clase ViewController.
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
	//Declaramos un arreglo los nombres de los restaurantes
    let DatosR = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant",
        "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]
    //Declaramos los nombres de los archivos de imagen en arreglo
    let imgArray = ["barrafina","bourkestreetbakery","cafedeadend","cafeloisl","cafelore","confessional","donostia","fiveleaves","forkeerestaurant", "grahamavenuemeats","haighschocolate","homei","palominoespresso","petiteoyster","posatelier","royaloak","teakha","thaicafe","traif","upstate","wafflewolf"]

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
        return DatosR.count
    }
    //Función tableView, didSelectRowAtIndexPath
	//Esta función nos desplegará un cuadro de alerta al seleccionar una fila
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {//lo que demos clic mostrar alert controller dato de lo que es el arreglo
        //El alert controller nos desplegará un mensaje con el nombre del restaurante que elijamos, dependiendo de la celda
		let controlador = UIAlertController(title: "Usted ha elegido el restaurante:", message: DatosR[indexPath.row], preferredStyle: .Alert)
        //Le agregamos un alertAction para que podamos salir del alertController y continuar usando la app
		let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        controlador.addAction(btn)
        presentViewController(controlador, animated: true, completion: nil)
    }
	//Función tableView, cellForRowAtIndexPath
	//Se encarga del manejo de cada celda
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
			//declaramos celda para enlazarse con la celda en fisico
            let celda = tableView.dequeueReusableCellWithIdentifier("mCelda")
            //index path indice de la tabla saber que fila está ubicado
			celda?.textLabel?.text = DatosR[indexPath.row] 
			//Llama al arreglo de imagenes para que se asigne con cada celda
			let img = UIImage(named: imgArray[indexPath.row])
            celda?.imageView?.image = img
            return celda!
    }
}