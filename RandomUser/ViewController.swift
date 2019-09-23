//
//  ViewController.swift
//  RandomUser
//
//  Created by Romain Pouclet on 2019-09-23.
//  Copyright © 2019 Perfectly-Cooked. All rights reserved.
//

import UIKit
import Alamofire
import RandomUserKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("Random: \(RandomUserKit().random())")

        Alamofire.request("https://randomuser.me/api/").response { r in
            DispatchQueue.main.async { [weak self] in
                let a = UIAlertController(title: "Success!", message: "We got a random user!", preferredStyle: .alert)
                self?.present(a, animated: true, completion: nil)
            }
        }


    }

}

