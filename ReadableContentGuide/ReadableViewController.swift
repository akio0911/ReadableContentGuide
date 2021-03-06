//
//  ViewController.swift
//  ReadableContentGuide
//
//  Created by akio0911 on 2016/05/05.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class ReadableViewController: UIViewController {
    
    let textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = UIColor.lightGrayColor()
        textView.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
        view.addSubview(textView)
        
        useReadableContentGuide()
    }
    
    func useReadableContentGuide() {
        title = "Readable Content Guide"
        
        textView.leadingAnchor
            .constraintEqualToAnchor(view.readableContentGuide.leadingAnchor).active = true
        textView.topAnchor
            .constraintEqualToAnchor(view.readableContentGuide.topAnchor).active = true
        textView.trailingAnchor
            .constraintEqualToAnchor(view.readableContentGuide.trailingAnchor).active = true
        textView.bottomAnchor
            .constraintEqualToAnchor(view.readableContentGuide.bottomAnchor).active = true
    }
}

