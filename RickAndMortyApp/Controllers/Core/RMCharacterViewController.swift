//
//  CharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 02.03.2023.
//

import UIKit
/// Controller to search and show Characters
class RMCharacterViewController: UIViewController {

    private let characterListView = CharacterListView()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Character"
        view.addSubview(characterListView)
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            characterListView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
