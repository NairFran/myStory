//
//  ViewController.swift
//  DGStarter
//
//  Created by Maribel Montejano on 12/13/22.
//

import UIKit

class GuesserViewController: UIViewController {

    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    let background = Dinosaur(name: "Background", image: UIImage(named: "youngBruce")!, type: "Bruce Wayne was born to Thomas and Martha Wayne on April 7th. He witnessed the murder of both his parents and vowed to avenge their deaths. Bruce does so by running nonprofit foundations that address the social issues that are currently encouraging crimes. He is a wealthy American Industrialist and resides in Wayne Manor.")
    let family = Dinosaur(name: "Family", image: UIImage(named: "batFam")!, type: "Bruce Wayne was raised by his butler Alfred Pennyworth after after the deaths of his parents. Due to this he has adopted multiple orphaned and abandoned children in hopes to give them a chance to survive Gotham. He has three adopted kids, Dick, Jason, and Tim, and one bilogical son, Damien. Him and his wife, Selena, are expecting their first daughter Helena.")
    let tyrannosaurus = Dinosaur(name: "Enterprise", image: UIImage(named: "enterprisePic")!, type: "Wayne Enterprise is owned by Bruce Wayne and run by Lucius Fox. One of the campanies many developments is the study and construction of cleaner mechanical fission and fusion power plants. Wayne Enterprise has an estimated worth of $31.3 billion.")
    let brachiosaurus = Dinosaur(name: "Batman", image: UIImage(named: "batmanPic")!, type: "After his parents were murdered, Bruce Wayne swore that he would avenge their deaths but not in the way most people thought. He trained himslef physically and intellectually to be able to fight crime and bring justice to Gotham through his alter ego Batman.He does not posses any superpowers and instead relies on his fighting skills, intelligence, and wealth. He is at times accompanied by his children, with their own alter egos, when fighting crime.")

    // Array for storing Dinosaurs
    var dinosaurs: [Dinosaur] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store Dinosaur models
        dinosaurs = [background, family, tyrannosaurus, brachiosaurus]

    }

    
    @IBAction func didTapp(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.dinosaur = dinosaurs[0]
            } else if tappedView.tag == 1 {
                detailViewController.dinosaur = dinosaurs[1]
            } else if tappedView.tag == 2 {
                detailViewController.dinosaur = dinosaurs[2]
            } else if tappedView.tag == 3 {
                detailViewController.dinosaur = dinosaurs[3]
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
    
    

}

