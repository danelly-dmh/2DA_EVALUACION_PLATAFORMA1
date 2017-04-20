//
//  ViewController.swift
// <EVA2_P5_PASSWORD> - <Pide una contraseña aceptada>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 31/03/17
// Copyright © 2017 comdanelly. All rights reserved.
import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
	//Declaramos las variables a enlazar y el arreglo de imagenes que se usará en el pickerView
    @IBOutlet weak var lblUser: UITextField!
    var arreglo: [UIImage]!
	//Declaramos los estados, tanto normal y el que será la contraseña correcta
    var arregloRow = [0,0,0]
    var pass = [2,2,2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
		//Declaramos el areglo dentro del objeto
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
            if (lblUser.text == "usuario"){
        let alertView = UIAlertController(title: "Seleccion exitosa ", message: "Elegiste bien", preferredStyle: .Alert)
                let btn = UIAlertAction(title: "Ok", style: .Default, handler: {action in self.performSegueWithIdentifier("conexion", sender: self)})
        alertView.addAction(btn)
        presentViewController(alertView, animated: true, completion: nil)
        }
        //Si el estado no coincide con el de la contraseña correcta, se desplegará un alertController indicando que se equivocó en la contraseña
        }else {
            let alertView = UIAlertController(title: "Seleccion incorrecta", message: "USUARIO O CONTRASEÑA INCORRECTOS", preferredStyle: .Alert)
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

