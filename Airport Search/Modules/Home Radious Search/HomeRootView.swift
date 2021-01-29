//
//  HomeRootView.swift
//  Airport Search
//
//  Created by Abiú Roldán on 27/01/21.
//

import UIKit

final class HomeRootView: UIView {
    
    let strokeTextAttributes = [
      NSAttributedString.Key.strokeColor : UIColor.black,
      NSAttributedString.Key.foregroundColor : UIColor.white,
      NSAttributedString.Key.strokeWidth : -0.4,
      NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 55)]
      as [NSAttributedString.Key : Any]
    
    let strokeTTextAttributes = [
      NSAttributedString.Key.strokeColor : UIColor.black,
      NSAttributedString.Key.foregroundColor : UIColor.white,
      NSAttributedString.Key.strokeWidth : -0.4,
      NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 35)]
      as [NSAttributedString.Key : Any]
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: "AIRPORT", attributes: strokeTextAttributes)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: "finder", attributes: strokeTTextAttributes)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    let kmLabel: UILabel = {
        let label = UILabel()
        label.text = "60"
        label.font = UIFont.boldSystemFont(ofSize: 60)
        label.textAlignment = .center
        return label
    }()
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.minimumTrackTintColor = UIColor(red: 149/255, green: 214/255, blue: 240/255, alpha: 1)
        slider.minimumValue = 0.1
        return slider
    }()
    
    let radiousLabel: UILabel = {
        let label = UILabel()
        label.text = "RADIOUS IN KM"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let searchButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 65/255, green: 170/255, blue: 215/255, alpha: 1)
        button.layer.cornerRadius = 8.0
        button.setTitle("SEARCH", for: .normal)
        return button
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
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(kmLabel)
        addSubview(slider)
        addSubview(radiousLabel)
        addSubview(searchButton)
    }
    
    private func addConstraints() {
        titleLabel.setContraints(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, topSpace: 25, leadingSpace: 16, trailingSpace: -16)
        subtitleLabel.setContraints(top: titleLabel.bottomAnchor, leading: safeAreaLayoutGuide.leadingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, topSpace: 0, leadingSpace: 16, trailingSpace: -16)
        
        kmLabel.setContraints(leading: safeAreaLayoutGuide.leadingAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, bottom: centerYAnchor, leadingSpace: 16, trailingSpace: -16, bottomSpace: 0)
        
        slider.setContraints(top: kmLabel.bottomAnchor, leading: layoutMarginsGuide.leadingAnchor, trailing: layoutMarginsGuide.trailingAnchor, topSpace: 0, leadingSpace: 32, trailingSpace: -32)
        
        radiousLabel.setContraints(top: slider.bottomAnchor, leading: slider.leadingAnchor, trailing: slider.trailingAnchor, topSpace: 8)
        
        searchButton.setContraints(leading: layoutMarginsGuide.leadingAnchor, trailing: layoutMarginsGuide.trailingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, leadingSpace: 16, trailingSpace: -16, bottomSpace: -32)
        searchButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
