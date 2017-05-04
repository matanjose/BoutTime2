//
//  MIButton2ViewController.swift
//  BoutTime
//
//  Created by Jose Portuondo-Dember on 5/4/17.
//  Copyright © 2017 Jose Portuondo-Dember. All rights reserved.
//

import UIKit

class MIButton2ViewController: UIViewController {

    @IBOutlet weak var moreInfo2: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadWebsite()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss() {
        dismiss(animated: true, completion: nil)
    }

    func loadWebsite() {
        let event = quizletList[1]
        
        let url = URL(string: event.moreInfoURL)
        if let unwrappedURL = url {
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                if error == nil {
                    self.moreInfo2.loadRequest(request)
                } else {
                    print("ERROR: \(String(describing: error)))")
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
