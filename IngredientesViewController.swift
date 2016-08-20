//
//  IngredientesViewController.swift
//  Pedirpizza
//
//  Created by 170923 on 19/08/16.
//  Copyright © 2016 170923. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    var contador = 0
    var ingredientes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func jamon(sender: AnyObject) {
       

            if !ingredientes.contains("Jamón") {
               
                if ingredientes.count < 5 {
                    ingredientes.insert("Jamón", atIndex: contador)
                    contador += 1
                } else {
                    if contador >= 5{
                        contador = 0
                    }
                    //contador = 0
                    ingredientes.removeAtIndex(contador)
                    //ingredientes[contador] = "Jamón"
                    ingredientes.insert("Jamón", atIndex: contador)
                    contador += 1
                }
            }
        
       // print(ingredientes)
    }

    @IBAction func pepperoni(sender: AnyObject) {
        if !ingredientes.contains("Pepperoni") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Pepperoni", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                    contador = 0
                }
                //contador = 0
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Pepperoni"
                ingredientes.insert("Pepperoni", atIndex: contador)
                contador += 1
            }
        }



       // print(ingredientes)
    }
 
    @IBAction func pavo(sender: AnyObject) {
        
        if !ingredientes.contains("Pavo") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Pavo", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                    contador = 0
                }
                //contador = 0
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Pavo"
                ingredientes.insert("Pavo", atIndex: contador)
                contador += 1
            }
        }

        
        

       // print(ingredientes)
    }
    
    @IBAction func salchicha(sender: AnyObject) {
        
        if !ingredientes.contains("Salchicha") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Salchicha", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                    contador = 0
                }
                //contador = 0
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Salchicha"
                ingredientes.insert("Salchicha", atIndex: contador)
                contador += 1
            }
        }

        
      //  print(ingredientes)
    }
    
    @IBAction func aceituna(sender: AnyObject) {
        
        if !ingredientes.contains("Aceituna") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Aceituna", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                    contador = 0
                }
                //contador = 0
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Aceituna"
                 ingredientes.insert("Aceituna", atIndex: contador)
                contador += 1
            }
        }

        

       // print(ingredientes)
    }
    
    @IBAction func pimienta(sender: AnyObject) {
        if !ingredientes.contains("Pimienta") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Pimienta", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                contador = 0
                }
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Pimienta"
                ingredientes.insert("Pimienta", atIndex: contador)
                contador += 1
            }
        }

       // print(ingredientes)
    }
    @IBAction func cebolla(sender: AnyObject) {
        if !ingredientes.contains("Cebolla") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Cebolla", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                    contador = 0
                }
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Pimienta"
                ingredientes.insert("Cebolla", atIndex: contador)
                contador += 1
            }
        }

        
        
      
       // print(ingredientes)
    }
    @IBAction func pina(sender: AnyObject) {
       
        if !ingredientes.contains("Piña") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Piña", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                    contador = 0
                }
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Pimienta"
                ingredientes.insert("Piña", atIndex: contador)
                contador += 1
            }
        }

       
       // print(ingredientes)
    }
    @IBAction func anchoa(sender: AnyObject) {
        if !ingredientes.contains("Anchoa") {
            
            if ingredientes.count < 5 {
                ingredientes.insert("Anchoa", atIndex: contador)
                contador += 1
            } else {
                if contador >= 5{
                    contador = 0
                }
                ingredientes.removeAtIndex(contador)
                //ingredientes[contador] = "Pimienta"
                ingredientes.insert("Anchoa", atIndex: contador)
                contador += 1
            }
        }

          //     print(ingredientes)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if ingredientes.count > 0 {
            Pizza.updateValue(ingredientes, forKey: "Ingredientes")
        }
        print(Pizza)
        //print(ingredientes)
    }
    

}
