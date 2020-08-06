//
//  ViewController.swift
//  DicodingSubmission
//
//  Created by Devis Evianus on 17/07/20.
//  Copyright © 2020 example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var characterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterTableView.dataSource = self
        characterTableView.delegate = self
        characterTableView.register(UINib(nibName: "CharacterTableViewCell", bundle: nil), forCellReuseIdentifier: "CharacterCell")
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as? CharacterTableViewCell {
            let character = characters[indexPath.row]
            cell.nameCharacter.text = character.name
            cell.photoCharacter.image = character.photo
            
            return cell
        } else {
            return UITableViewCell()
        }
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detail.character = characters[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
}
