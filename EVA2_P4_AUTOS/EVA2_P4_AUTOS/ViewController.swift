//
//  ViewController.swift
// <EVA2_P4_AUTOS> - <Nos muestra tres listas en un pickerView con autos, modelo y color>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 30/03/17
// Copyright © 2017 comdanelly. All rights reserved.


import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    @IBOutlet weak var imagenC: UIImageView!
	//Declaramos los arreglos de las distintas marcas de autos
	//Declaramos los modelos disponibles y colores
    var imagenes: [UIImage]!
    let autos = ["BMW","Camaro","Challenger","Jetta","Mustang","RAM","",""]
    let modelo = ["1970","1995","2000","2003","2005","2006","2010","2016"]
    let color = ["Rojo","Amarillo","Azul","Gris","Negro","Verde","Blanco","Naranja"]
	//Declaramos los estados en los que mostraremos determinada imagen
    var arregloRow = [0,0,0]
    var bmwr1 = [0,0,0]
    var bmwa1 = [0,0,2]
    var bmwa2 = [0,1,2]
    var bmwa3 = [0,6,2]
    var bmww1 = [0,0,6]
    var bmww2 = [0,3,6]
    var bmww3 = [0,3,6]
    var bmwg1 = [0,0,3]
    var bmwg2 = [0,4,3]
    var bmwg3 = [0,6,3]
    var camaro1 = [1,0,0]
    var camaro2 = [1,3,0]
    var camaro3 = [1,6,0]
    var camaron1 = [1,0,4]
    var camaron2 = [1,3,4]
    var camaron3 = [1,6,4]
    var camaroa1 = [1,0,1]
    var camaroa2 = [1,3,1]
    var camaroa3 = [1,6,1]
    var chaln1 = [2,0,4]
    var chaln2 = [2,3,4]
    var chaln3 = [2,6,4]
    var chalna1 = [2,0,7]
    var chalna2 = [2,3,7]
    var chalna3 = [2,6,7]
    var chala1 = [2,0,1]
    var chala2 = [2,3,1]
    var chala3 = [2,6,1]
    var jetab1 = [3,0,0]
    var jetab2 = [3,3,0]
    var jetab3 = [3,6,0]
    var jettav1 = [3,0,5]
    var jettav2 = [3,3,5]
    var jettav3 = [3,6,5]
    var jettar1 = [3,0,0]
    var jettar2 = [3,3,0]
    var jettar3 = [3,6,0]
    var mustang1 = [4,0,0]
    var mustang2 = [4,3,0]
    var mustang3 = [4,6,0]
    var mustangn1 = [4,0,4]
    var mustangn2 = [4,3,4]
    var mustangn3 = [4,6,4]
    var mustangb1 = [4,0,6]
    var mustangb2 = [4,3,6]
    var mustangb3 = [4,6,6]
    

    override func viewDidLoad() {
        super.viewDidLoad()
		//Declaramos las imagenes en un arreglo a mostrarse dentro del UIImage
        imagenes = [UIImage(named: "bmwa-10")!,
            UIImage(named: "bmw-10")!,
            UIImage(named: "bmw-14")!,
            UIImage(named: "bmw-64")!,
            UIImage(named: "bmwa-14")!,
            UIImage(named: "bmwa-64")!,
            UIImage(named: "bmwa-10")!,
            UIImage(named: "bmwr-64")!,
            UIImage(named: "bmww-10")!,
            UIImage(named: "bmww-14")!,
            UIImage(named: "bmww-64")!,
            UIImage(named: "camaro-10")!,
            UIImage(named: "camaro-14")!,
            UIImage(named: "camaro-64")!,
            UIImage(named: "camaroa-14")!,
            UIImage(named: "camaroa-64")!,
            UIImage(named: "camaron-10")!,
            UIImage(named: "camaron-14")!,
            UIImage(named: "camaron-64")!,
            UIImage(named: "challengern-14")!,
            UIImage(named: "challengera-14")!,
            UIImage(named: "challengerne-14")!,
            UIImage(named: "challengern-64")!,
            UIImage(named: "challengera-64")!,
            UIImage(named: "challengerne-64")!,
            UIImage(named: "jetta-10")!,
            UIImage(named: "jetta-14")!,
            UIImage(named: "jetta-64")!,
            UIImage(named: "jettab-10")!,
            UIImage(named: "jettab-14")!,
            UIImage(named: "jettab-64")!,
            UIImage(named: "jettav-10")!,
            UIImage(named: "jettav-14")!,
            UIImage(named: "jettav-64")!,
            UIImage(named: "mustang-10")!,
            UIImage(named: "mustang-64")!,
            UIImage(named: "mustangb-10")!,
            UIImage(named: "mustangb-14")!,
            UIImage(named: "mustangb-64")!,
            UIImage(named: "mustangn-10")!,
            UIImage(named: "mustangn-14")!,
            UIImage(named: "mustangn-10")!,
            UIImage(named: "mustangn-14")!,
            UIImage(named: "mustangn-64")!,
            UIImage(named: "ramb-64")!,
            UIImage(named: "ram-10")!,
            UIImage(named: "ramb-10")!,
            UIImage(named: "ramb-14")!,
            UIImage(named: "ramv-10")!,
            UIImage(named: "ramv-64")!,
            UIImage(named: "ram-14")!
            ]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función pickerView, didSelectRow
	//Indicamos que acciones se tomarán al acomodar los objetos del pickerView
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		//El UIImage se muestra vacío al iniciar la aplicación
        arregloRow[component] = row
		//Si el pickerView cambia de posición y es compatible con alguno de los estados siguientes, mostrará la imagen indicada
        if arregloRow == bmwa1{
            imagenC.image = UIImage(named: "bmwa-64")
        }else if arregloRow == bmwa2{
            imagenC.image = UIImage(named: "bmwa-10")
        }else if arregloRow == bmwa3{
            imagenC.image = UIImage(named: "bmwa-14")
        }else if arregloRow == bmwr1{
            imagenC.image = UIImage(named: "bmwr-64")
        }else if arregloRow == bmww1{
            imagenC.image = UIImage(named: "bmww-64")
        }else if arregloRow == bmww2{
            imagenC.image = UIImage(named: "bmww-10")
        }else if arregloRow == bmww3{
            imagenC.image = UIImage(named: "bmww-14")
        }else if arregloRow == bmwg1{
            imagenC.image = UIImage(named: "bmwg-64")
        }else if arregloRow == bmwg2{
            imagenC.image = UIImage(named: "bmwg-64")
        }else if arregloRow == bmwg3{
            imagenC.image = UIImage(named: "bmwg-64")
        }else if arregloRow == camaro1{
            imagenC.image = UIImage(named: "camaro-64")
        }else if arregloRow == camaro2{
            imagenC.image = UIImage(named: "camaro-10")
        }else if arregloRow == camaro3{
            imagenC.image = UIImage(named: "camaro-14")
        }else if arregloRow == camaron1{
            imagenC.image = UIImage(named: "camaron-64")
        }else if arregloRow == camaron2{
            imagenC.image = UIImage(named: "camaron-10")
        }else if arregloRow == camaron3{
            imagenC.image = UIImage(named: "camaron-14")
        }else if arregloRow == camaroa1{
            imagenC.image = UIImage(named: "camaroa-64")
        }else if arregloRow == camaroa2{
            imagenC.image = UIImage(named: "camaroa-10")
        }else if arregloRow == camaroa3{
            imagenC.image = UIImage(named: "camaroa-14")
        }else if arregloRow == chaln1{
            imagenC.image = UIImage(named: "challengerne-64")
        }else if arregloRow == chaln2{
            imagenC.image = UIImage(named: "challengerne-10")
        }else if arregloRow == chaln3{
            imagenC.image = UIImage(named: "challengerne-14")
        }else if arregloRow == chalna1{
            imagenC.image = UIImage(named: "challengern-64")
        }else if arregloRow == chalna2{
            imagenC.image = UIImage(named: "challengern-10")
        }else if arregloRow == chalna3{
            imagenC.image = UIImage(named: "challengern-14")
        }else if arregloRow == chala1{
            imagenC.image = UIImage(named: "challengera-64")
        }else if arregloRow == chala2{
            imagenC.image = UIImage(named: "challengera-10")
        }else if arregloRow == chala3{
            imagenC.image = UIImage(named: "challengera-14")
        }else if arregloRow == jetab1{
            imagenC.image = UIImage(named: "jetta-64")
        }else if arregloRow == jetab2{
            imagenC.image = UIImage(named: "jetta-10")
        }else if arregloRow == jetab3{
            imagenC.image = UIImage(named: "jetta-14")
        }else if arregloRow == jettar1{
            imagenC.image = UIImage(named: "jettab-64")
        }else if arregloRow == jettar2{
            imagenC.image = UIImage(named: "jettab-10")
        }else if arregloRow == jettar3{
            imagenC.image = UIImage(named: "jettab-14")
        }else if arregloRow == jettav1{
            imagenC.image = UIImage(named: "jettav-64")
        }else if arregloRow == jettav2{
            imagenC.image = UIImage(named: "jettav-10")
        }else if arregloRow == jettav3{
            imagenC.image = UIImage(named: "jettav-14")
        }else if arregloRow == mustang1{
            imagenC.image = UIImage(named: "mustang-64")
        }else if arregloRow == mustang2{
            imagenC.image = UIImage(named: "mustang-10")
        }else if arregloRow == mustang3{
            imagenC.image = UIImage(named: "mustang-14")
        }else if arregloRow == mustangb1{
            imagenC.image = UIImage(named: "mustangb-64")
        }else if arregloRow == mustangb2{
            imagenC.image = UIImage(named: "mustanb-10")
        }else if arregloRow == mustangb3{
            imagenC.image = UIImage(named: "mustangb-14")
        }else if arregloRow == mustangn1{
            imagenC.image = UIImage(named: "mustangn-64")
        }else if arregloRow == mustangn2{
            imagenC.image = UIImage(named: "mustangn-10")
        }else if arregloRow == mustangn3{
            imagenC.image = UIImage(named: "mustangn-14")
        }
		//De lo contrario seguirá vacio
        else{
            imagenC.image = UIImage(named: "")
        }
        
    }
	//Función pickerView, titleForRow
	//Indicamos los arreglos a mostrar en los distintos componentes del pickerView
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let l = ""
        if component == 0 {
            return autos[row]
        }else if component == 1{
            return modelo[row]
        }else if component == 2{
            return color[row]
        }else{
            return l
        }
    }
	//Función numberOfComponentsInPickerView
	//Le indicamos cuantos componentes se muestran
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
	//Función pickerView, numberOfRowsInComponent
	//Le indicamos el arreglo a devolver
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return autos.count
    }
	//Función pickerView, rowHeightForComponent
	//Indica el tamaño determinado para la fila
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 70
    }

}

