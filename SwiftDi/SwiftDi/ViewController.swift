//
//  ViewController.swift
//  SwiftDi
//
//  Created by Hoshiar Sher on 8/28/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //"https://iosacademy.io/api/v1/courses/index.php"
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        button.setTitle("Tap Here", for: .normal)
        button.center = view.center
        button.setTitleColor(.white, for: .normalr)
    }

}

