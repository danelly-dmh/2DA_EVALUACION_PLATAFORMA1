//
//  VerdeViewController.swift
// <EVA2_9_SEGUE> - <Esta aplicación nos translada de una pantalla a otra y de regreso>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 23/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class VerdeViewController: UIViewController {
    //declaramos el outlet para enlazarlo con el código
	@IBOutlet weak var lVerde: UILabel!
    var sTexto = ""

    override func viewDidLoad() {
        super.viewDidLoad()
		//Enlazamos el texto con el string que creamos
        lVerde.text = sTexto
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
