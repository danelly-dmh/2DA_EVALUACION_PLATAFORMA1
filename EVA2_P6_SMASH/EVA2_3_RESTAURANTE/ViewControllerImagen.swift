//
//  ViewControllerImagen.swift
// <EVA2_P6_SMASH> - <>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 31/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class ViewControllerImagen: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
    //Declaramos los outlets del nuevo viewControler
	//Y les asignamos un valor vacío
	@IBOutlet weak var lblplatillo: UILabel!
    @IBOutlet weak var lblingred: UILabel!
    var img: [UIImage]!
    var num = [0,0]
    var platillo = ""
    var restauran = ""
	//Creamos el arreglo de ingredientes y las imagenes que enlazaremos
    var imgs: [UIImage]!
    let ing = ["jamon","queso","tocino","apio","champi"]
    let ingre = ["jamon","queso","tocino","apio","champi"]

    override func viewDidLoad() {
        super.viewDidLoad()
		//Declaramos el arreglo dentro del objeto
        img = [UIImage(named: "jamon")!,
            UIImage(named: "queso")!,
            UIImage(named: "tocino")!,
            UIImage(named: "apio")!,
            UIImage(named: "champi")!]
        //Creamos dos arreglos para que sean dos componentes dentro del pickerView
        imgs = [UIImage(named: "jamon")!,
            UIImage(named: "queso")!,
            UIImage(named: "tocino")!,
            UIImage(named: "apio")!,
            UIImage(named: "champi")!]        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Fincion numberOfComponentsInPickerView
	//Le indicamos que muestre dos componentes en el pickerView
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    //numero de arreglos u origenes de datos
	return 2 
    }
    //Función pickerView, didSelectRow
	//Indicamos las acciones a realizar al seleccionar una fila del componente
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        num[component] = row
        var a = num[0]
        var b = num[1]
		//Creamos un alertController que nos muestre la informacion en las filas seleccionadas de ambos componentes
        let acMostrar = UIAlertController(title: "Su platillo "+platillo+" tendra: ", message: ing[a] + " y "+ingre[b], preferredStyle: .Alert)
        let acBoton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        acMostrar.addAction(acBoton)
        presentViewController(acMostrar, animated: true, completion: nil)
    }
    //Función pickerView, viewForRow
	//Indica que arreglo mostrar en cada componente
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        if component == 0{
            let imag = img[row]
            let imgView = UIImageView(image: imag)
            return imgView
        }else{
            let image2 = imgs[row]
            let imgView2 = UIImageView(image: image2)
            return imgView2
        }
    }
    //Función pickerView, numberOfRowsInComponent
	//Asigna la informacion que irá dentro de cada componente
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		if component == 0{
            return ing.count
        }else{
            return ingre.count
        }
    }
    //Función pickerView, rowHeightForComponent
	//Asignamos tamaño de la fila
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 128
    }

}
