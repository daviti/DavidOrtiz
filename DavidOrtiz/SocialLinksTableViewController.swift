//
//  SocialLinksTableViewController.swift
//  DavidOrtiz
//
//  Created by David Ortiz on 7/1/14.
//  Copyright (c) 2014 Dognate. All rights reserved.
//

import UIKit

class SocialLinksTableViewController: UITableViewController {
    
    let socialServicesTableViewController = ["Blog", "Linkedin", "Facebook", "Twitter", "Github",]
    let socialURLs = ["http://www.davidortizcaro.com/",
                      "http://www.linkedin.com/in/davidortiz",
                      "http://www.facebook.com/davidortizcaro",
                      "http://www.twitter.com/elfachonista",
                      "http://www.github.com/daviti"]

        let usernames = ["davidortizcaro.com", "in/davidortiz", "davidortizcaro", "@elfachonista", "daviti"]
  
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }



    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
       
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
     
        return socialServicesTableViewController.count
    }


    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("socialLinksCell", forIndexPath: indexPath)
        as UITableViewCell
        
        println(socialServicesTableViewController)
        println(indexPath)
        
        let socialService = socialServicesTableViewController[indexPath.row]
        cell.textLabel.text = socialService;
        cell.imageView.image = UIImage(named:socialService)

    
        return cell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView?, canEditRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView?, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath?) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView?, moveRowAtIndexPath fromIndexPath: NSIndexPath?, toIndexPath: NSIndexPath?) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView?, canMoveRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
