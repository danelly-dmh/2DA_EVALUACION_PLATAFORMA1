//
//  ViewController.swift
// <EVA2_P3_LISTA_ASIGNATURAS> - <Esta aplicación nos mostrará una lista de materias y al seleccionar una se mostrarán los datos>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 28/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    //Declaramos los outlets para enlazar los objetos al código
	@IBOutlet weak var presenteImage: UIImageView!
    @IBOutlet weak var plbl: UILabel!
    //Declaramos la lista de materias, los semestres en los que se ven y las imagenes que les enlazaremos posteriormente
    let materias = ["Fundamentos de bases de datos","Taller de Bases de datos","Administracion de bases de datos","Estructura de datos","Fundamentos de programacion",
        "Topicos avanzados de programacion","Programacion Orientada a objetos","Programacion Logica y Funcional","Plataforma 1","Plataforma 2","Programacion web","Fundamentos de redes","Conmutacion y Redes","Administracion de redes"]
    let areas = ["bases de datos","bases de datos","Programacion","Programacion",
        "programacion","Programacion","Programacion","Programacion","Programacion","Programacion","Redes"," Redes","redes"]
    let semestres = ["1 Semestre","2 Semestre","3 Semestre","3er semestre","1o semestre",
        "4o Semestre","2 Semestre","7 semestre","8 semestre","9 semestre","8 Semestre","6 Semestre","7 Semestre","8 semestre"]
    let imagenes = ["bases-color","bases-color","bases-color","bases-color","programacion-color","programacion-color","programacion-color","programacion-color","programacion-color","programacion-color","programacion-color","redes-color","redes-color","redes-color"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	//Función tableView
	//Indicamos que en el tableView se regrese el arreglo de la lista de materias
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
	//Función tableView, didSelectRowAtIndexPath
	//En esta función le indicamos las acciones a realizar cuando se seleccione una fila
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		//Creamos un alertController que mostrará la información del arreglo dependiendo el número de fila seleccionado
        plbl.text = areas[indexPath.row]
        presenteImage.image = UIImage(named: imagenes[indexPath.row])
        let controlador = UIAlertController(title: materias[indexPath.row], message: semestres[indexPath.row], preferredStyle: .Alert)
        let btn = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        controlador.addAction(btn)
        presentViewController(controlador, animated: true, completion: nil)
    }
	//Función tableView, cellForRowAtIndexPath
	//Enlazamos los objetos de la celda al código para que muestren el arreglo
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //arreglo en la tabla ler cuando usa scroll
        let img = UIImage(named: imagenes[indexPath.row])
        let celda = tableView.dequeueReusableCellWithIdentifier("mcelda")
        celda?.textLabel?.text = materias[indexPath.row]
        celda?.imageView?.image = img
        return celda!
    }
}

