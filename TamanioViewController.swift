//
//  TamanioViewController.swift
//  Pedirpizza
//
//  Created by 170923 on 19/08/16.
//  Copyright © 2016 170923. All rights reserved.
//

import UIKit

class TamanioViewController: UIViewController {

    var tamanioPizza = ""
    
    @IBAction func pizzaChica(sender: AnyObject) {
    
        tamanioPizza = "Chica"
    }
    
    @IBAction func pizzaMediana(sender: AnyObject) {
        tamanioPizza = "Mediana"
    }
    
    
    @IBAction func pizzaGrande(sender: AnyObject) {
        tamanioPizza = "Grande"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if tamanioPizza != "" {
            
            //pizza.append(tamanioPizza)
            Pizza.updateValue(tamanioPizza, forKey: "Tamanio")
            
        }
        
        //print(pizza)
        print(Pizza)
    }
    

}
