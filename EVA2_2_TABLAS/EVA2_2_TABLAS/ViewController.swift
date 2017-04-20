//
//  ViewController.swift
// <Tablas> - <Esta aplicación muestra una lista la cual contendrá datos de texto acompañados de una imagen y al dar clic en una celda, la imagen cambiará y nos lanzará un cuadro de alerta que muestra la informción seleccionada>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 07/03/17
// Copyright © 2017 comdanelly. All rights reserved.


import UIKit
	//Los dataSource se encargan de cargar cargar los datos que va a mostrar la tabla en sus celdas
	//Los delegados son los que manejan los eventos disparados desde otra clase. En este caso la clase UITableView va a recibir ciertas acciones por parte de los usuarios y las va a delegar a nuestra clase ViewController.
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
	//Se declara el arreglo con la información a enlistar
    let misDatos = ["1","es","rew","gers","trefe","gregrefrs","es","reefe","grefrew","gers","trefe","grefrs"]
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
	//Indicamos que regrese el arreglo la información que ingresamos
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misDatos.count
    }
	//Función tableView, didSelectRowAtIndexPath
	//Esta función nos desplegará un cuadro de alerta al seleccionar una fila
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //Creamos un alertController que mostrará los datos seleccionados del arreglo
		let controlador = UIAlertController(title: "tus datos", message: misDatos [indexPath.row], preferredStyle: .Alert)
        //Le agregamos un alertAction para que podamos salir del alertController y continuar usando la app
		let boton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        controlador.addAction(boton)
        presentViewController(controlador, animated: true, completion: nil)
    }
	//Función tableView, cellForRowAtIndexPath
	//Se encarga del manejo de cada celda
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //declaramos celda para enlazarse con la celda en fisico
		let celda = tableView.dequeueReusableCellWithIdentifier("mcelda")
        /*
        if celda == nil{
            celda = UITableViewCell(style: .Default, reuseIdentifier: "mcelda")
        }//con esto nos aseguramos de que no este vacia la celda
        */
		//asignamos valores al objeto celda y con indexPath conoceremos el indice de las filas(para saber en que fila esta el usuario)
        celda?.textLabel?.text = misDatos[indexPath.row]
        //declaramos imagenes que se añadieron a Assets
		let imFija = UIImage(named: "star-b")
        let iClick = UIImage(named: "star-p")
        //asigna la imagen seleccionada a todas las celdas
		celda?.imageView?.image = imFija
		//asigna la imagen seleccionada a la celda seleccionada
        celda?.imageView?.highlightedImage = iClick
        return celda!
    }
}

