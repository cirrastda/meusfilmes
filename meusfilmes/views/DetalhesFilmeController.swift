//
//  DetalhesFilmeController.swift
//  meusfilmes
//
//  Created by Anderson Matuchenko on 27/05/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import UIKit

class DetalhesFilmeController: UIViewController {

    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var tituloFilme: UILabel!
    @IBOutlet weak var descricaoFilme: UILabel!
    var filme: Filme!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDadosFilme(filme: self.filme)
        // Do any additional setup after loading the view.
    }
    
    func loadDadosFilme(filme: Filme) {
        //if let lFilme = filme {
        imagemFilme.image = filme.imagem
        tituloFilme.text = filme.nome
        descricaoFilme.text = filme.descricao
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
