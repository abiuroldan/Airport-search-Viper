//
//  AirportListRootView.swift
//  Airport Search
//
//  Created by Abiú Roldán on 29/01/21.
//

import UIKit

final class AirportListRootView: UIView {
    
    let layout: UICollectionViewFlowLayout = {
        let flow = UICollectionViewFlowLayout()
        return flow
    }()
    
    lazy var collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        styleView()
        addSubviews()
        addConstraints()
    }
    
    private func styleView() {
        backgroundColor = Colors.grayAppColor
    }
    
    private func addSubviews() {
        addSubview(collectionView)
    }
    
    private func addConstraints() {
        collectionView.fullScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
