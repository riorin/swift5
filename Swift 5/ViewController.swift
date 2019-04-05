//
//  ViewController.swift
//  Swift 5
//
//  Created by Rio Rinaldi on 02/04/19.
//  Copyright © 2019 Rio Rinaldi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let appleLogo: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "AppleLogo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionLabel: UITextView = {
        let labelDes = UITextView()
        labelDes.text = "Loading"
        return labelDes
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        view.addSubview(appleLogo)
        setupLayout()
        

    }
    
    public func setupLayout() {
        
        //        mengatur posisi gambar
        appleLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        appleLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        //        mengatur perspektif gambar
        appleLogo.widthAnchor.constraint(equalToConstant: 55).isActive = true
        appleLogo.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        
        descriptionLabel.topAnchor.constraint(equalTo: appleLogo.bottomAnchor, constant: 120).isActive = true
    }
    
}

