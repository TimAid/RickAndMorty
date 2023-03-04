//
//  CharacterListViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 04.03.2023.
//

import UIKit

final class RMCharacterListViewViewModel: NSObject {
    
    func fetchCharacters() {
        RMService.shared.execute(RMRequest.listCharacterRequest, expecting: RMGetCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("total: \(model.info.count), pages: \(model.info.pages)")
            case .failure(let failure):
                print(failure.localizedDescription )
            }
        }
    }
}

extension RMCharacterListViewViewModel : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red  
        return cell
    }
      
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bound = UIScreen.main.bounds
        let width = (bound.width - 30) / 2
        
        return CGSize(width: width , height: width * 1.5)
    }
}
