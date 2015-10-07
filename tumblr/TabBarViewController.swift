//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Lindsey Boyden on 10/6/15.
//  Copyright © 2015 Lindsey Boyden. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        var homeView = storyboard.instantiateViewControllerWithIdentifier("homeViewController") as! homeViewController
        
        var searchView = storyboard.instantiateViewControllerWithIdentifier("searchViewController") as! searchViewController
        
        var composeView = storyboard.instantiateViewControllerWithIdentifier("composeViewController") as! composeViewController
        
        var accountView = storyboard.instantiateViewControllerWithIdentifier("accountViewController") as! accountViewController
        
        var trendingView = storyboard.instantiateViewControllerWithIdentifier("trendingViewController") as! trendingViewController
        
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
