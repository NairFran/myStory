//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Walter Franchino on 2/2/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var dinosaur: Dinosaur?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let dinosaur = dinosaur {
                print(dinosaur.name)
            }
        if let dinosaur = dinosaur {
            // Configure the dinosaur image and dynamic labels
            dinosaurImageView.image = dinosaur.image
            dinosaurNameLabel.text = dinosaur.name
            typeLabel.text = dinosaur.type
        }
    }
    
    @IBOutlet weak var dinosaurImageView: UIImageView!
    @IBOutlet weak var dinosaurNameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
}
