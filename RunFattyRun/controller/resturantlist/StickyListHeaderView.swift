//
//  StickListHeaderView.swift
//  RunFattyRun
//
//  Created by Lennart Olsen on 04/10/2017.
//  Copyright © 2017 Burger Inc. All rights reserved.
//

import UIKit

class StickyListHeaderView: UIView {
    
    var imageView:UIImageView!
    
    var colorView:UIView!
    
    var bgColor = UIColor(red: 194/255, green: 13/255, blue: 0/255, alpha: 1)
    
    var titleLabel = UILabel()
    
    var articleIcon:UIImageView!
    
    init(frame:CGRect, title: String, backgroundImage: UIImage?, iconImage: UIImage?) {
        self.titleLabel.text = title.uppercased()
        
        
        super.init(frame: frame)
        
        setUpView(backgroundImage: backgroundImage, iconImage: iconImage)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
     * Sets up a color view witch is the bottom one and lays an image view atop of it
     * Then it sets a label and a icon
     **/
    func setUpView(backgroundImage: UIImage?, iconImage: UIImage?) {
        self.backgroundColor = UIColor.white
        
        /** Image View & Color View **/
        imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imageView)
        
        
        colorView = UIView()
        colorView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(colorView)
        /** Constraints, basically inherting from the parent **/
        let constraints:[NSLayoutConstraint] = [
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            colorView.topAnchor.constraint(equalTo: self.topAnchor),
            colorView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            colorView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            colorView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        
        imageView.image = UIImage(named: "icon")
        if let image = backgroundImage {
            imageView.image = image
        }
        imageView.contentMode = .scaleAspectFill
        colorView.backgroundColor = bgColor
        colorView.alpha = 0.6
        
        /** Title Label **/
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleLabel)
        let titlesConstraints:[NSLayoutConstraint] = [
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 28),
            ]
        NSLayoutConstraint.activate(titlesConstraints)
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        titleLabel.textAlignment = .center
        
        /** Icon **/
        articleIcon = UIImageView()
        articleIcon.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(articleIcon)
        let imageConstraints:[NSLayoutConstraint] = [
            articleIcon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            articleIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 6),
            articleIcon.widthAnchor.constraint(equalToConstant: 40),
            articleIcon.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(imageConstraints)
        
        articleIcon.image = UIImage(named: "hamburger")
        if let image = iconImage {
             articleIcon.image = image
        }
    }

}
