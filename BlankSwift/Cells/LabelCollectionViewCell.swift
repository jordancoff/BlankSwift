//
//  LabelCollectionViewCell.swift
//  BlankSwift
//
//  Created by Jordan Coff on 3/12/22.
//  Copyright © 2022 Jordan Coff. All rights reserved.
//

import UIKit
import SnapKit

final class LabelCollectionViewCell: UICollectionViewCell {
    let label = UILabel(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        label.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(16)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func update(text: String) {
        label.text = text
    }
}
