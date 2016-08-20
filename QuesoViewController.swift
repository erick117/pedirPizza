//
//  QuesoViewController.swift
//  Pedirpizza
//
//  Created by 170923 on 19/08/16.
//  Copyright © 2016 170923. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {

    var quesoPizza = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quesoMozarela(sender: AnyObject) {
        quesoPizza = "Mozarela"
    }
    
    @IBAction func quesoCheddar(sender: AnyObject) {
        quesoPizza = "Cheddar"
    }
    @IBAction func quesoParmesano(sender: AnyObject) {
        quesoPizza = "Parmesano"
    }

    @IBAction func sinQueso(sender: AnyObject) {
        quesoPizza = "Sin Queso"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if quesoPizza != "" {
            Pizza.updateValue(quesoPizza, forKey: "Queso")
        }
        
        print(Pizza)
    }
    

}
