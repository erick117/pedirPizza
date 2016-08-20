//
//  ConfirmacionPizzaViewController.swift
//  Pedirpizza
//
//  Created by 170923 on 19/08/16.
//  Copyright © 2016 170923. All rights reserved.
//

import UIKit

class ConfirmacionPizzaViewController: UIViewController {

    @IBOutlet weak var tamanio: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    @IBOutlet weak var confirmar: UIButton!
    @IBOutlet weak var pedido: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var etapasCompletas = 0

        // Do any additional setup after loading the view.
        if Pizza.isEmpty {
            print("No podemos confirmar tu pizza, no seleccionaste nada para ella")

        
        } else {
            
            if let tam = Pizza["Tamanio"]  {
                if tam as! String  != "" {
                    tamanio.text = tam as? String
                    //print("tamaño")
                }
                etapasCompletas += 1
            }
            
            if let tam = Pizza["Masa"]  {
                if tam as! String  != "" {
                    masa.text = tam as? String
                    //print("masa")
                }
                etapasCompletas += 1
            }
            
            if let tam = Pizza["Queso"]  {
                if tam as! String  != "" {
                    queso.text = tam as? String
                   // print("queso")
                }
                etapasCompletas += 1
            }
            
            if let Ing = Pizza["Ingredientes"] {
                if Ing.count > 0 {
                    var cadena = ""
                    for i in Ing as! Array<String> {
                        cadena += i + " "
                    }
                    ingredientes.text = cadena
                    print(cadena)
                }
                etapasCompletas += 1
            }
            
        }
        
        if etapasCompletas == 4 {
            pedido.text = "Orden completa puede confirmar la Pizza"
            confirmar.enabled = true
           // print("Puede confirmar la Pizza")
        } else {
            pedido.text = "Debe completar la orden para poder confirmar la Pizza"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
