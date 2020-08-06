//
//  DetailViewController.swift
//  DicodingSubmission
//
//  Created by Devis Evianus on 18/07/20.
//  Copyright © 2020 example. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameCharacter: UILabel!
    @IBOutlet weak var photoCharacter: UIImageView!
    @IBOutlet weak var descriptionCharacter: UILabel!
    
    var character: Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let result = character {
            nameCharacter.text = result.name
            photoCharacter.image = result.photo
            descriptionCharacter.text = result.description
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
