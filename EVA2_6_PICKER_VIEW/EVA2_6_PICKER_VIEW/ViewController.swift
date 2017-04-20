//
//  ViewController.swift
// <EVA2_6_PICKER_VIEW> - <Esta aplicación muestra varias listas en un pickerView y nos muestra la informacion seleccionada de ambos>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 16/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit
	//Los dataSource se encargan de cargar cargar los datos que va a mostrar la tabla en sus celdas
	//Los delegados son los que manejan los eventos disparados desde otra clase. En este caso la clase UITableView va a recibir ciertas acciones por parte de los usuarios y las va a delegar a nuestra clase ViewController.
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    //Declaramos dos arreglos que serán las dos listas a desplegar
	let dias = ["lunes","maertes","miercoles","jueves","viernes","sabado","domingo"]
    let adDatos = ["rosa","verde","amarillo","azul","anaranjado","rojo","gris","negro","blanco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función pickerView
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //le va a poner el texto al picker view acda vez que lo necesite
        //regresar el elemento del arreglo acorde a la fila que este seleccionada
        if component == 0 {
        return dias[row]
        }else{
            return adDatos[row]
        }
    }
	//Función numberOfComponentsInPickerView 
	//indica cuantos diferentes componentes se mostrarán en el pickerView  
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        //Regresa determinado numero de arreglos u origenes de datos
		return 2 
    }
	//Función pickerView, didSelectRow
	//le indica que hacer cuando seleccionan el picker view
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //Declaramos un string para que se iguale al elemento seleccionado del arreglo
		var sString: String
        if component == 0{
            sString = dias[row]
        }else {
            sString = adDatos[row]
        }
		//El alertController nos desplegará un mensaje con el string que contiene la información del arreglo dependiendo de la celda que se seleccionó
        let acMostrar = UIAlertController(title: "PICKER VIEW", message: sString, preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "ok", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
	//Función pickerView, numberOfRowsInComponent
	//Indicamos cuantos elementos hay en el componente  
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //Si el componente es el primer arreglo
		if component == 0{
		//Se regresa la cantidad de datos en el componente actual
        return dias.count 
        }
		else{
            return adDatos.count
        }
    }
}

