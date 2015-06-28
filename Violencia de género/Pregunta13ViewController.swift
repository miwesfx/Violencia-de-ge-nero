//
//  Pregunta13ViewController.swift
//  Violencia de género
//
//  Created by Miguel on 17/6/15.
//  Copyright (c) 2015 Miguel Pérez. All rights reserved.
//

import UIKit

class Pregunta13ViewController: UIViewController {

    //Variables que guardan la puntuación a cada respuesta
    var notaSi : Int = 2
    var notaNo : Int = 0
    var pos : Int = 1
    var miVector = [Int] (count: 24, repeatedValue: 0)
    
    @IBOutlet weak var botonSi: UIButton!
    @IBOutlet weak var botonNo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var DestViewController : Pregunta14ViewController = segue.destinationViewController as! Pregunta14ViewController
        
        //Actualizamos el vector y la posición en el siguiente viewcontroller
        DestViewController.miVector = miVector
        DestViewController.pos = pos + 1
        
        //Lo siguiente determina qué ocurre dependiendo de que boton se pulse
        if botonSi === sender {
            DestViewController.miVector[pos-1] = notaSi
        }
        if botonNo === sender {
            DestViewController.miVector[pos-1] = notaNo
        }
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
