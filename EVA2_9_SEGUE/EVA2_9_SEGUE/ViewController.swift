//
//  ViewController.swift
// <EVA2_9_SEGUE> - <Esta aplicación nos translada de una pantalla a otra y de regreso>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 23/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class ViewController: UIViewController {
    @IBAction func lanzarSegue(sender: AnyObject) {
		//Declaramos el Alert Controller con las dos opciones a seguir:
		//pantalla verde o pantalla roja
        let alertController = UIAlertController(title: "Pantallas", message: "Muestra", preferredStyle: .Alert)
        let segueVerde = UIAlertAction(title: "Verde", style: .Default, handler: {action in self.performSegueWithIdentifier("segueVerde", sender: self)})
        let segueRojo = UIAlertAction(title: "Rojo", style: .Default, handler: {action in self.performSegueWithIdentifier("segueRojo", sender: self)})
        alertController.addAction(segueVerde)
        alertController.addAction(segueRojo)
        presentViewController(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función prepareForSegue
	//Enlaza los segues de los viewcontroller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		//Determina cual acción se seguirá dependiendo del identificador del segue
		//Si es segueVerde el viewController a abrir será el quemaneja el color Verde
		//De lo contrario será el rojo
        if segue.identifier == "segueVerde"{
        let nuevoViewController = segue.destinationViewController as! VerdeViewController
            nuevoViewController.sTexto = "Bienvenido al cuadro verde"
        }
        else if segue.identifier == "segueRojo"{
            let nuevoViewController = segue.destinationViewController as! RojoViewController
            nuevoViewController.sTexto = "Bienvenido al cuadro rojo"
        }
    }
}

