//
//  FBViewController.swift
//  Consultorio
//
//  Created by Luisa Beatriz Garcia Alva on 02/05/18.
//  Copyright © 2018 Luisa Beatriz Garcia Alva. All rights reserved.
//

import UIKit
import WebKit
class FBViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let url:URL = URL(string: "https://www.facebook.com/psicologia.ita/")!
        let urlRequest:URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
