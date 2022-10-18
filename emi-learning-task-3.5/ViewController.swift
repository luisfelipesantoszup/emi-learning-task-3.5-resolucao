//
//  ViewController.swift
//  emi-learning-task-3.5
//
//  Created by Luis Felipe on 18/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var areaTextField: UITextField!
    @IBOutlet weak var statusTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func botaoReceberPressionado(_ sender: UIButton) {
        confirmarDados()
        enviarDados()
    }
    
    func confirmarDados() {
        let titulo = "Quase lá!"
        let mensagem = "Antes de enviarmos, por favor, revise seus dados:\n\nNome: \(nomeTextField.text!)\nEmail: \(emailTextField.text!)\nÁrea de Atuação: \(areaTextField.text!)\nStatus Profissional: \(statusTextField.text!)"
        
        let alert = UIAlertController(title: titulo, message: mensagem, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { _ in
            self.enviarDados()
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    func enviarDados() {
        let alert = UIAlertController(title: "Feito!", message: "Verifique seu email e tenha acesso ao documento.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok!", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}
