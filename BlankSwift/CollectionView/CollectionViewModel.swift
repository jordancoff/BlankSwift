//
//  CollectionViewCell.swift
//  BlankSwift
//
//  Created by Jordan Coff on 3/12/22.
//  Copyright © 2022 Jordan Coff. All rights reserved.
//

import UIKit

protocol CollectionViewModel {
    associatedtype CellType: UICollectionViewCell
    func dequeueReusableCell(from collectionView: UICollectionView,
                             at indexPath: IndexPath) -> CellType
    func applyToCell(_ cell: CellType)
}

extension CollectionViewModel {
    var cellIdentifier: String { "\(CellType.self)" }

    func dequeueReusableCell(from collectionView: UICollectionView,
                             at indexPath: IndexPath) -> CellType {
        collectionView.register(CellType.self, forCellWithReuseIdentifier: cellIdentifier)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        guard let typedCell = cell as? CellType else { fatalError() }
        return typedCell
    }
}
