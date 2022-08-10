//
//  ViewController.swift
//  Example
//
//  Created by Илья on 10.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - UILabel
        label.text = "Hellow World!"
        label.textColor = .blue
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.textAlignment = .center
        label.numberOfLines = 5
        
        //MARK: - UIButton
        button.backgroundColor = .green
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.setTitle("Touch Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        textField.textColor = .white
        textField.textAlignment = .center
        textField.placeholder = "type your text here..."
        textField.backgroundColor = .systemBlue
    }
    
    @IBAction func buttonPresed(_ sender: UIButton) {
        label.textColor = getRandomColor()
        if textField.text != "" {
            label.text = textField.text
            textField.text = ""
        }
    }
    
    func getRandomColor() -> UIColor {
         // Generate between 0 to 1
         let red: CGFloat = CGFloat(drand48())
         let green: CGFloat = CGFloat(drand48())
         let blue: CGFloat = CGFloat(drand48())

         return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

