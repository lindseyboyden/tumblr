//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Lindsey Boyden on 10/6/15.
//  Copyright © 2015 Lindsey Boyden. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var previousButton: UIButton!

    @IBOutlet weak var initialHome: UIButton!
 
    @IBAction func onHomeBuuton(sender: UIButton) {
        
        
        homeViewController.view.frame = contentView.bounds
        
        contentView.addSubview(homeViewController.view)
        
        sender.selected = true
        
        previousButton = sender

    }
    @IBAction func onSearchButton(sender: UIButton) {
        searchViewController.view.frame = contentView.frame
        contentView.addSubview(searchViewController.view)
        
        previousButton.selected = false
        
        sender.selected = true
        
        previousButton = sender
        
        print("search")
    }
    
    @IBAction func onComposeButton(sender: UIButton) {
        
        print("compose")
    }
    
    @IBAction func onAccountButton(sender: UIButton) {
        print("account")
        accountViewController.view.frame = contentView.frame
        
        contentView.addSubview(accountViewController.view)
        
        previousButton.selected = false
        
        sender.selected = true

        previousButton = sender
    }
    
    @IBAction func onTrendingButton(sender: UIButton) {
        print("trend")
        trendingViewController.view.frame = contentView.frame
        contentView.addSubview(trendingViewController.view)
       
        previousButton.selected = false
        
        sender.selected = true
        
        previousButton = sender
        
    }
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var tabView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

       var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("composeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingViewController")
        
        
        initialHome.selected = true
        
        contentView.addSubview(homeViewController.view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
