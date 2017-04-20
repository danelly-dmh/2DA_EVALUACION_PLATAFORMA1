//
//  ViewController.swift
// <EVA2_8_PICKER_VIEW_3> - <Esta aplicación muestra varias listas en un pickerView y pide seleccionar una contraseña>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 21/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    //Declaramos el arreglo de imagenes
	var arreglo: [UIImage]!
	//Declaramos el estado normal del pickerView
    var arregloRow = [0,0,0]
	//Declaramos el estado en el que será correcta la contraseña
    var pass = [2,2,2]
    
    override func viewDidLoad() {
		//Declaramos el areglo dentro del objeto
        super.viewDidLoad()
        arreglo = [UIImage(named: "facebook")!, UIImage(named: "google")!,
            UIImage(named: "instagram")!,
            UIImage(named: "twitter-xl")!,
            UIImage(named: "pinterest")!]
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función pickerView, viewForRow
	//Declaramos que se muestre el arreglo de imagenes en cada fila
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = arreglo[row]
        let imgView = UIImageView(image: imagen)
        return imgView
    }
	//Función numberOfComponentsInPickerView
	//Le indicamos cuantas columnas de componentes mostrará el pickerView
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    //Función pickerView, numberOfRowsInComponent
	//Indicamos los elementos a mostrar en el componente
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arreglo.count
    }
	//Función pickerView, didSelectRow
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //Le indica al componente que cuando las filas se encuentren en el estado
		//que se declaró como contraseña, despliegue un alertView
        arregloRow[component] = row
        if arregloRow == pass{
        let alertView = UIAlertController(title: "Seleccion exitosa ", message: "Elegiste bien", preferredStyle: .Alert)
        let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alertView.addAction(btn)
        presentViewController(alertView, animated: true, completion: nil)
        }
    }
	//Función pickerView, rowHeightForComponent
	//Indica el tamaño de la fila
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }

}

