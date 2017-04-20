//
//  ViewControllerImagen.swift
// <RESTAURANTE> - <Esta aplicación muestra una lista de restaurantes con su respectiva imagen y descripción>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 24/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit
class ViewControllerImagen: UIViewController {
	//Declaramos los outlets del nuevo viewControler
	//Y les asignamos un valor vacío
    @IBOutlet weak var lblDeta: UILabel!
    var sDetalles = ""
    @IBOutlet weak var imgDetalle: UIImageView!
    var sNomImg = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()
		//enlazamos los objetos para poder utilizarlos en el código
        imgDetalle.image = UIImage(named: sNomImg)!
        lblDeta.text = sDetalles
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
