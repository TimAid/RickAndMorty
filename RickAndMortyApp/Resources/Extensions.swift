//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Timur Mannapov on 04.03.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach( {
            addSubview($0 )
        })
    }
}
