//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Costin Valu on 3/7/18.
//  Copyright © 2018 Andreea Goder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Scroll: UIScrollView!
    var images = [UIImageView]()
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
      
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        print("Scroll width: \(Scroll.frame.size.width)")
        
        let scrollWidth = Scroll.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image:image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            Scroll.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (Scroll.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        Scroll.clipsToBounds = false
        
        Scroll.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
    
    }





