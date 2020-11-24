//
//  ViewController.swift
//  les3.1
//
//  Created by Павел on 24.11.2020.
//

import UIKit

@IBDesignable class PrimaryButton: UIButton {
    
    @IBInspectable var border: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
    }
}
}

class ViewController: UIViewController {
    
    var rectangleTopAchor: NSLayoutConstraint?
    

    @IBOutlet weak var rect: UIView!
    
    var isActive : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        andHeight()
        // Do any additional setup after loading the view.
    }
    
    func andHeight() {
       
        rect.backgroundColor = .orange
        rect.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rect)
        
        rectangleTopAchor = rect.topAnchor.constraint(equalTo: view.topAnchor, constant: 74)
        rectangleTopAchor?.isActive = true
        
        rect.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        
        rect.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        rect.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }


    @IBAction func changeColorAndHeight(_ sender: UIButton) {
        rectangleTopAchor?.constant = 200
        isActive = !isActive
        rect.backgroundColor = isActive ? .orange : .gray
        
        if isActive == false {
            sender.isEnabled = false
    }
    
}

}
