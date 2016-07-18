//
//  ViewController.swift
//  DemoOfTableAndCollectionView
//
//  Created by kvanaMini1 on 20/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var breed: [String] = ["puppy","snoopy","bulldog","boxer"]
    var images: [String] = ["puppy", "snoopy",  "bulldog","boxer"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
     
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)as! MyTableViewCell
        
        cell.imageView?.image = UIImage(named: images[indexPath.row])
        cell.textLabel?.text = breed[indexPath.row]
        
        cell.imageView!.layer.cornerRadius = 25
        cell.imageView!.clipsToBounds = true
        
        return cell
        
     }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        let detailViewController   : DetailViewController = self.storyboard!.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        
        
        detailViewController.picTitle = self.breed[indexPath.row]
        detailViewController.nameString = self.images[indexPath.row]
        
        self.navigationController!.pushViewController(detailViewController, animated: true)
        
        
        
    }
    


}

