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
        
        loadWebsite()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    func loadWebsite() {
        let url = URL(string: "https://www.google.com")
        if let unwrappedURL = url {
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                if error == nil {
                    self.moreInfoDisplay.loadRequest(request)
                } else {
                    print("ERROR: \(error))")
                }
            }
            
            task.resume()
        }
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
