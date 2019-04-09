//
//  ComplexViewWidth.swift
//  AutoLayout Cookbook
//
//  Created by anna.sibirtseva on 09/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class ComplexViewWidth:UIViewController  {
    
    let blueView = UIView()
    let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.backgroundColor = .blue
        redView.backgroundColor = .red
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        //MARK: Always disable autoresizing masks
        redView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(redView)
        view.addSubview(blueView)
        
        if #available(iOS 11, *) {
            let guide = view.safeAreaLayoutGuide
            NSLayoutConstraint.activate([
                blueView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 8.0),
                blueView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -8.0),
                redView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 8.0),
                redView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -8.0),
                blueView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 8.0),
                redView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -8.0)
                ])
        } else {
            NSLayoutConstraint.activate([
                blueView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
                blueView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8.0),
                redView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
                redView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8.0),
                blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0),
                redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0)
               ])
        }
        let redViewWidthConstraint = redView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 2.0)
        redViewWidthConstraint.priority = .defaultHigh
        
        NSLayoutConstraint.activate([
            blueView.trailingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -8.0),
            blueView.widthAnchor.constraint(greaterThanOrEqualToConstant: 150.0),
            redViewWidthConstraint
            ])
   }
}
