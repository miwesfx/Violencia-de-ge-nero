//
//  ResultadoTestViewController.swift
//  Violencia de género
//
//  Created by Miguel on 17/6/15.
//  Copyright (c) 2015 Miguel Pérez. All rights reserved.
//

import UIKit

class ResultadoTestViewController: UIViewController {

    @IBOutlet weak var labelResultado: UILabel!
    @IBOutlet weak var labelNivel: UILabel!
    
    var miVector = [Int] (count: 24, repeatedValue: 0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //Calcula los peligros por acumulación de respuestas peligrosas
        var peligroalto = miVector[0] + miVector[1] + miVector[2] + miVector[6] + miVector[7]
        var peligromedio = miVector[3] + miVector[4] + miVector[8] + miVector[9] + miVector[12]
        
        //Suma todas las posiciones del test
        var total = 0
        for index in 0...23{
            total += miVector[index]
        }
        
        
       //Inserta en la etiqueta el total
       labelResultado.text = String (total)
        
        //Imprime los niveles de peligro
        if (total >= 20 || peligroalto > 5) {
            labelNivel.text = "Peligro alto." // Debe ponerse en contacto inmediatamente con la policía."
        }
        else if (total > 13 || peligromedio > 5 ){
            labelNivel.text = "Peligro medio." //Debe ponerse en contacto con la policía o asistir a servicios sociales de atención a la mujer."
        }
        else {
            labelNivel.text = "Peligro bajo." //Debería informar a la policía o asistir a servicios a atención a la mujer."
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    // override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    //}
    

}
