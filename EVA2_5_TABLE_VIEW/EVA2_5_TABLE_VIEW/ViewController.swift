//
//  ViewController.swift
//  EVA2_5_TABLE_VIEW
// <EVA2_5_TABLE_VIEW> - <Esta aplicación muestra una lista de restaurantes con su respectiva imagen y descripción>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 14/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
	//Declaramos los datos del arreglo
    let datosR = ["La Waffleria","Café Real","Sushi Bar","Wings & Beer"]
	//Declaramos el arreglo de las imagenes
    let imgs = ["waffleria","cafe","sushi","wings"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función tableView
	//En esta función vamos a indicar los datos que se devolverán en filas. Indicamos que regrese el arreglo de nombres de restaurante
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datosR.count 
    }
	//Función tableView, didSelectRowAtIndexPath
	//Esta función nos desplegará un cuadro de alerta al seleccionar una fila
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
         //El alert controller nos desplegará un mensaje con el nombre del restaurante que elijamos, dependiendo de la celda
		let controlador = UIAlertController(title: "Restaurante: ", message: datosR[indexPath.row], preferredStyle: .Alert)
		//Le agregamos un alertAction para que podamos salir del alertController y continuar usando la app
        let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton) //poner el controlador en el boton
        presentViewController(controlador, animated: true, completion: nil)
    }
	//Función tableView, cellForRowAtIndexPath
	//Se encarga del manejo de cada celda
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //declaramos celda para enlazarse con la celda en fisico
		let celda = tableView.dequeueReusableCellWithIdentifier("micelda") as! TableViewCellMia
        //Asigna los datos del arreglo a los objetos de la celda
		//index path indica el indice de la tabla para ver fila
		celda.lblNombre.text = datosR[indexPath.row]
        celda.ubic.text = "Chihuahua"
        celda.lblDescr .text = "Far Far Away..."
        let img = UIImage(named: imgs[indexPath.row])
        celda.imgI.image = img
        return celda
    }
}

