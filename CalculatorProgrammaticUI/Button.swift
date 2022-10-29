//
//  Button.swift
//  CalculatorProgrammaticUI
//
//  Created by Anatoliy on 29.10.2022.
//

import UIKit

class Button: UIButton {

    override init (frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        //setTitleColor(.black, for: .normal)
        //backgroundColor = .systemMint
        //titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 28)
        layer.cornerRadius = 0
    }
    
}

