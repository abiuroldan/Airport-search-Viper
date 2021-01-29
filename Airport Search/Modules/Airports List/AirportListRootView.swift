//
//  AirportListRootView.swift
//  Airport Search
//
//  Created by Abiú Roldán on 29/01/21.
//

import UIKit

final class AirportListRootView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        styleView()
    }
    
    private func styleView() {
        backgroundColor = Colors.grayAppColor
    }
    
    private func subviews() {}
    
    private func addConstraints() {}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
