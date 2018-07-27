//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Couvelard Mathieu on 27/07/2018.
//  Copyright © 2018 Couvelard Mathieu. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {

    var chanson: Chanson?
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if chanson != nil {
            chargerVideo(chanson: chanson!)
        }
    }
    
    func chargerVideo(chanson: Chanson){
        if let url = URL(string: chanson.videoUrl) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
