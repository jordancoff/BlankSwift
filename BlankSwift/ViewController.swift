//
//  ViewController.swift
//  BlankSwift
//
//  Created by Jordan Coff on 9/8/20.
//  Copyright © 2020 Jordan Coff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen

        let collectionViewController = CollectionViewController<String>()
        collectionViewController.viewModels = (1...1000).map { "\($0)" }
        collectionViewController.modalPresentationStyle = .pageSheet
        navigationController?.present(collectionViewController, animated: true, completion: nil)
    }
}
