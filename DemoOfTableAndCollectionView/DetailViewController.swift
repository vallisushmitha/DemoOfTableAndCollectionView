//
//  DetailViewController.swift
//  DemoOfTableAndCollectionView
//
//  Created by kvanaMini1 on 23/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var dogsimage: UIImageView!
    
    @IBOutlet weak var piclabel: UILabel!
    
    var picTitle: String?
    var nameString: String?
  

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        piclabel.text = picTitle
        dogsimage.image = UIImage(named: nameString!)
        
        
//            nameString = "picture"
//        dogsimage.image = UIImage(named: dogimage!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
