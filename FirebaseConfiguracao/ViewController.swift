//
//  ViewController.swift
//  FirebaseConfiguracao
//
//  Created by Rodrigo Abreu on 30/11/2017.
//  Copyright © 2017 Rodrigo Abreu. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    var firebase = Database.database().reference()    
    @IBOutlet var textoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Criacao de usuario
        Auth.auth().createUser(withEmail: "rodrigo.s.abreu@gmail.com", password: "rod123456") { (usuario, erro) in
            
            if erro == nil{
                print("Sucesso ao cadastrar usuario !!")
            }else{
                print("Erro ao cadastrar usuario: \(String(describing: erro?.localizedDescription))")
            }
            
            
        }
        
        
        
        //Testar se o usuario esta logado
        Auth.auth().addStateDidChangeListener { (Auth, usuario) in
            
            if let usuarioLogado = usuario {
                print("usuario esta logado! " + String(describing: usuarioLogado.email))
            }else{
                print("usuario nao esta logado!!")
            }
            
        }
        
        
        
        /*let usuarios = firebase.child("usuarios")
        usuarios.removeValue()
        
        usuarios.child("001").child("nome").setValue("Rodrigo")
        usuarios.child("002").child("nome").setValue("Tatiana")
        usuarios.child("003").child("nome").setValue("Rafaela")
        usuarios.child("004").child("nome").setValue("Marco")
        usuarios.child("005").child("nome").setValue("Eliana")
        usuarios.child("006").child("nome").setValue("Ronaldo")
        
        usuarios.child("003").removeValue()*/
        
        
        //let pontuacao = firebase.child("pontuacao")
        //pontuacao.child("valor").setValue("100")
        
        //Recuperar dados do Firebase
        /*let pontuacao = firebase.child("pontuacao").child("valor")
        
        pontuacao.observe(DataEventType.value, with: {(dados) in
            
            print(dados)
             let ponto = String(describing: dados.value!)
                self.textoLabel.text = ponto

        })*/
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

