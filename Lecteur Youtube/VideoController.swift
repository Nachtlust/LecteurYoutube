//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by Couvelard Mathieu on 27/07/2018.
//  Copyright © 2018 Couvelard Mathieu. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson: Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        if chanson != nil {
            title = chanson?.titre
        }
    }
}
