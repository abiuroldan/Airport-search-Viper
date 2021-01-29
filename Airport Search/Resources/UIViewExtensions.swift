//
//  UIViewExtensions.swift
//  Airport Search
//
//  Created by Abiú Roldán on 27/01/21.
//

import UIKit

extension UIView {
    
    func setContraints(top: NSLayoutAnchor<NSLayoutYAxisAnchor>? = nil, leading: NSLayoutAnchor<NSLayoutXAxisAnchor>? = nil, trailing: NSLayoutAnchor<NSLayoutXAxisAnchor>? = nil, bottom: NSLayoutAnchor<NSLayoutYAxisAnchor>? = nil, topSpace: CGFloat? = 0.0, leadingSpace: CGFloat? = 0.0, trailingSpace: CGFloat? = 0.0, bottomSpace: CGFloat? = 0.0) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top, let topSpace = topSpace {
            self.topAnchor.constraint(equalTo: top, constant: topSpace).isActive = true
        }
        
        if let leading = leading, let leadingSpace = leadingSpace {
            self.leadingAnchor.constraint(equalTo: leading, constant: leadingSpace).isActive = true
        }
        
        if let trailing = trailing, let trailingSpace = trailingSpace {
            self.trailingAnchor.constraint(equalTo: trailing, constant: trailingSpace).isActive = true
        }
        
        if let bottom = bottom, let bottomSpace = bottomSpace {
            self.bottomAnchor.constraint(equalTo: bottom, constant: bottomSpace).isActive = true
        }
    }
    
    func fullScreen() {
        guard let superView = superview else { return }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo:  superView.safeAreaLayoutGuide.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}
