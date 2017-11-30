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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pontuacao = firebase.child("pontuacao")
        
        //pontuacao.child("002").child("nome").setValue("Maria")
        
        pontuacao.removeValue()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

