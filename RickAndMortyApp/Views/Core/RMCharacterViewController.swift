//
//  CharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import UIKit
/// Controller to search and show Characters
class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Character"
        
        let request = RMRequest(endpoint: .character,queryParameters: [
        URLQueryItem(name: "name", value: "rick"), URLQueryItem(name: "status", value: "alive")])
        
        print(request.url)
        
        RMService.shared.execute(request, expecting: RmChara .self) { result in
            switch result {
            case .success(let success):
                <#code#>
            case .failure(let failure):
                <#code#>
            }
        }
    }
}
