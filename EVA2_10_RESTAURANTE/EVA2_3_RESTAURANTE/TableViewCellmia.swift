//  TableViewCellmia.swift
// <RESTAURANTE> - <Esta aplicación muestra una lista de restaurantes con su respectiva imagen y descripción>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 23/03/17
// Copyright © 2017 comdanelly. All rights reserved.
//

import UIKit

class TableViewCellmia: UITableViewCell {
	//Declaramos los siguientes objetos como outlets para que se enlacen al código:
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblUbica: UILabel!
    @IBOutlet weak var lblDescrip: UILabel!
    @IBOutlet weak var lblImag: UIImageView!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
