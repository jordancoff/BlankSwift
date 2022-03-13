//
//  PrimativeCellModel.swift
//  BlankSwift
//
//  Created by Jordan Coff on 3/12/22.
//  Copyright © 2022 Jordan Coff. All rights reserved.
//

import UIKit

extension String: CollectionViewModel {
    typealias CellType = LabelCollectionViewCell

    func applyToCell(_ cell: CellType) {
        cell.update(text: self)
    }
}

extension Int: CollectionViewModel {
    typealias CellType = LabelCollectionViewCell

    func applyToCell(_ cell: CellType) {
        cell.update(text: String(self))
    }
}
