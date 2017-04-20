//
//  ViewController.swift
// <EVA2_7_PICKER_VIEW_IMG> - <Esta aplicación muestra varias listas de imagenes en un pickerView y nos muestra la informacion seleccionada de ambos>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 16/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
	//Declaramos el objeto UIImage para poder asignar el arreglo de imagenes que agregamos en Assets
    var aiImagenes: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
		//Declaramos el areglo dentro del objeto
        aiImagenes = [UIImage(named: "risa")!, UIImage(named: "enojo")!,
            UIImage(named: "corazon")!,
            UIImage(named: "like")!,
            UIImage(named: "lentes")!,
            UIImage(named: "whats")!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función pickerView, viewForRow
	//Declaramos que se muestre el arreglo de imagenes en cada fila
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let imagen = aiImagenes[row]
            let imgView = UIImageView(image: imagen)
            return imgView
    }
	//Función pickerView, rowHeightForComponent
	//Indica el tamaño de la fila
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
	//Función numberOfComponentsInPickerView 
	//indica cuantos diferentes componentes se mostrarán en el pickerView
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
	//Función pickerView, numberOfRowsInComponent
	//Indicamos los elementos a mostrar en el componente
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aiImagenes.count
    }

}

