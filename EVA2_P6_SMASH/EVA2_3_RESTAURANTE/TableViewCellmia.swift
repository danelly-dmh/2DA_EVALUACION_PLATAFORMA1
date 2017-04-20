//
//  TableViewCellmia.swift
// <EVA2_P6_SMASH> - <>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 31/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

class TableViewCellmia: UITableViewCell {
//Declaramos los siguientes objetos como outlets para que se enlacen al código:
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblUbica: UILabel!
    @IBOutlet weak var lblDescrip: UILabel!
    @IBOutlet weak var lblLema: UILabel!
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
