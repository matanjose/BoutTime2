//
//  moreInfo.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 5/3/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import UIKit
import WebKit




class moreInfo: UIViewController {

    @IBOutlet weak var moreInfoDisplay: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    func loadWebsite() {
      guard let url = URL(string: "http://www.apple.com") else { return }
        moreInfoDisplay.loadRequest(URLRequest(url: url))
    }
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
