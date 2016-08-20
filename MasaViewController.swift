//
//  MasaViewController.swift
//  Pedirpizza
//
//  Created by 170923 on 19/08/16.
//  Copyright © 2016 170923. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {

    var masaPizza = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func masaDelgada(sender: AnyObject) {
        masaPizza = "Delgada"
    }

    @IBAction func masaCrujiente(sender: AnyObject) {
        masaPizza = "Crujiente"
    }
    @IBAction func masaGruesa(sender: AnyObject) {
        masaPizza = "Gruesa"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if masaPizza != "" {
            Pizza.updateValue(masaPizza, forKey: "Masa")
        }
        print(Pizza)
    }
    

}
