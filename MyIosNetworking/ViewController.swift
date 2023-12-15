//
//  ViewController.swift
//  MyIosNetworking
//
//  Created by Никита Кислов on 01.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ArticlesWorker().fetchNews(page: 1) { result in
            print(result)
        }
    }


}

