//
//  Filme.swift
//  meusfilmes
//
//  Created by Anderson Matuchenko on 27/05/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import Foundation
import UIKit

class Filme {
    var nome: String
    var descricao: String
    var imagem: UIImage?
    
    init(nome: String, descricao: String, imagem: String) {
        self.nome = nome
        self.descricao = descricao
        self.imagem = UIImage(named: imagem)
    }
}
