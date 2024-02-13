//
//  ViewController.swift
//  Actividad_3
//
//  Created by Angel Meza on 07/02/24.
//

import UIKit

class ViewController: UIViewController {

    //Variable global
    var r: CGFloat = 255
    var g: CGFloat = 255
    var b: CGFloat = 255
    var a: CGFloat = 1.0
    
    // Funciones para la clase
    func myImage(){
        halo.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: a)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var halo: UIImageView!
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelAlpha: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    
    @IBAction func red(_ sender: UISlider) {
        self.a = CGFloat(sender.value)
        
        labelRed.text = "\(sender.value)"
        
        myImage()
        
    }
    

    @IBAction func green(_ sender: UISlider) {
        self.g = CGFloat(sender.value)
        labelGreen.text = String(sender.value)
        myImage()
    }
    
    @IBAction func blue(_ sender: UISlider) {
        self.b = CGFloat(sender.value)
        labelBlue.text = String(sender.value)
        myImage()
    }
    
    @IBAction func alpha(_ sender: UISlider) {
        self.a = CGFloat(sender.value)
        labelAlpha.text = String(sender.value)
        myImage()
    }
}

