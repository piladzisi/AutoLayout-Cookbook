//
//  EqualWidthViews.swift
//  AutoLayout Cookbook
//
//  Created by anna.sibirtseva on 09/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class EqualWidthViewController: UIViewController {
    
    let redView = UIView()
    let blueView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        blueView.backgroundColor = .blue
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        view.addSubview(redView)
        view.addSubview(blueView)
        
        //MARK: Always disable autoresizing masks
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        activateLayoutConstraints()
        
    }
    func activateLayoutConstraints(){
        if #available(iOS 11, *) {
            let guide = view.safeAreaLayoutGuide
            
            NSLayoutConstraint.activate([
                redView.leftAnchor.constraint(equalTo: guide.leftAnchor, constant: 8.0),
                redView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 8.0),
                redView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -8.0),
                blueView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 8.0),
                blueView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -8.0),
                blueView.rightAnchor.constraint(equalTo: guide.rightAnchor, constant: -8.0)
                ])
        } else {
            NSLayoutConstraint.activate([
                redView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8.0),
                redView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
                redView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8.0),
                blueView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
                blueView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8.0),
                blueView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0)
            ])
        }
        
        NSLayoutConstraint.activate([
            redView.rightAnchor.constraint(equalTo: blueView.leftAnchor, constant: -8.0),
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 1.0)
            ])
    }
    
}




