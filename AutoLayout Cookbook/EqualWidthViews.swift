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
    }
}




