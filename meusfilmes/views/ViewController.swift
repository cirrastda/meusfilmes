//
//  ViewController.swift
//  meusfilmes
//
//  Created by Anderson Matuchenko on 27/05/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    var currentRow: Int = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        carregarFilmes();
        // Do any additional setup after loading the view.
    }
    
   
    
    func carregarFilmes() {
        filmes.append(Filme(nome: "Filme 1", descricao: "descricao", imagem: "filme1.png"))
        filmes.append(Filme(nome: "Filme 2", descricao: "descricao", imagem: "filme2.png"))
        filmes.append(Filme(nome: "Filme 3", descricao: "descricao", imagem: "filme3.png"))
        filmes.append(Filme(nome: "Filme 4", descricao: "descricao", imagem: "filme4.png"))
        filmes.append(Filme(nome: "Filme 5", descricao: "descricao", imagem: "filme5.png"))
        filmes.append(Filme(nome: "Filme 6", descricao: "descricao", imagem: "filme6.png"))
        filmes.append(Filme(nome: "Filme 7", descricao: "descricao", imagem: "filme7.png"))
        filmes.append(Filme(nome: "Filme 8", descricao: "descricao", imagem: "filme8.png"))
        filmes.append(Filme(nome: "Filme 9", descricao: "descricao", imagem: "filme9.png"))
        filmes.append(Filme(nome: "Filme 10", descricao: "descricao", imagem: "filme10.png"))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaFilme = "cellFilme"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaFilme, for: indexPath) as! FilmeCelula
        parseFilmeCelula(celula: celula, filme: filmes[indexPath.row])
        /*
        celula.textLabel?.text = filmes[indexPath.row].nome
        celula.imageView?.image = filmes[indexPath.row].imagem
        */
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier=="segueDetalhes" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let viewDetalhes = segue.destination as! DetalhesFilmeController
                viewDetalhes.filme = filmes[indexPath.row];
                
            } else {
                showAlerta(titulo: "Alerta!", mensgaem: "Filme não Informado")
            }
        }
    }
    
    func parseFilmeCelula(celula: FilmeCelula, filme: Filme) {
        celula.imgFilme.image = filme.imagem
        celula.lblTitulo.text = filme.nome
        celula.lblDescricao.text = filme.descricao
        
        //celula.imgFilme.layer.cornerRadius = 41
        //celula.imgFilme.clipsToBounds = true
    }
    
    
    func showAlerta(titulo: String, mensgaem: String) {
        let alerta = UIAlertController(title: titulo, message: mensgaem, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default, handler:nil))
        present(alerta, animated: true)
    }
    
}

