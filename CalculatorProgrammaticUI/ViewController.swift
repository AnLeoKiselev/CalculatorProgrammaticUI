//
//  ViewController.swift
//  CalculatorProgrammaticUI
//
//  Created by Anatoliy on 29.10.2022.
//

import UIKit

//https://youtu.be/_DADWRicrGU

class ViewController: UIViewController {
    
    private lazy var label = UILabel()
    private lazy var topView1 = UIView()
    private lazy var topView2 = UIView()
    private lazy var parentStackView = UIStackView()
    private lazy var stackView1 = UIStackView()
    private lazy var stackView2 = UIStackView()
    private lazy var stackView3 = UIStackView()
    private lazy var stackView4 = UIStackView()
    private lazy var stackView5 = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureParentStackView()
    }
    
    private func configureParentStackView() {
        view.addSubview(parentStackView)
        parentStackView.axis = .vertical
        parentStackView.distribution = .fillEqually
        parentStackView.spacing = 1
        
        setParentStackViewConstraints()
        configureTopViews()
        configureTitleLabel()
        configureStackViews()
        
        parentStackView.addArrangedSubview(topView1)
        parentStackView.addArrangedSubview(topView2)
        parentStackView.addArrangedSubview(stackView5)
        parentStackView.addArrangedSubview(stackView4)
        parentStackView.addArrangedSubview(stackView3)
        parentStackView.addArrangedSubview(stackView2)
        parentStackView.addArrangedSubview(stackView1)
    }
    
    private func setParentStackViewConstraints() {
        parentStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            parentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            parentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            parentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            parentStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
    
    private func configureStackViews() {
        stackView1.axis = .horizontal
        stackView1.distribution = .fillProportionally
        stackView1.spacing = 1
        
        stackView2.axis = .horizontal
        stackView2.distribution = .fillEqually
        stackView2.spacing = 1
        
        stackView3.axis = .horizontal
        stackView3.distribution = .fillEqually
        stackView3.spacing = 1
        
        stackView4.axis = .horizontal
        stackView4.distribution = .fillEqually
        stackView4.spacing = 1
        
        stackView5.axis = .horizontal
        stackView5.distribution = .fillEqually
        stackView5.spacing = 1
        
        addButtonsToStackView1()
        addButtonsToStackView2()
        addButtonsToStackView3()
        addButtonsToStackView4()
        addButtonsToStackView5()
    }
    private func addButtonsToStackView1() {
        let button1 = Button()
        button1.setTitle("0", for: .normal)
        button1.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button1.setTitleColor(.black, for: .normal)
        button1.backgroundColor = .systemGray4
        stackView1.addArrangedSubview(button1)
        button1.widthAnchor.constraint(equalTo: stackView1.widthAnchor, multiplier: 0.498).isActive = true
        
        let button3 = Button()
        button3.setTitle(",", for: .normal)
        button3.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button3.setTitleColor(.black, for: .normal)
        button3.backgroundColor = .systemGray4
        stackView1.addArrangedSubview(button3)
        button3.widthAnchor.constraint(equalTo: stackView1.widthAnchor, multiplier: 0.2485).isActive = true
        
        let button4 = Button()
        button4.setTitle("=", for: .normal)
        button4.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 54.0)
        button4.backgroundColor = .systemOrange
        stackView1.addArrangedSubview(button4)
    }
    
    private func addButtonsToStackView2() {
        let button1 = Button()
        button1.setTitle("1", for: .normal)
        button1.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button1.setTitleColor(.black, for: .normal)
        button1.backgroundColor = .systemGray4
        stackView2.addArrangedSubview(button1)
        
        let button2 = Button()
        button2.setTitle("2", for: .normal)
        button2.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button2.setTitleColor(.black, for: .normal)
        button2.backgroundColor = .systemGray4
        stackView2.addArrangedSubview(button2)
        
        let button3 = Button()
        button3.setTitle("3", for: .normal)
        button3.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button3.setTitleColor(.black, for: .normal)
        button3.backgroundColor = .systemGray4
        stackView2.addArrangedSubview(button3)
        
        let button4 = Button()
        button4.setTitle("+", for: .normal)
        button4.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 57.0)
        button4.backgroundColor = .systemOrange
        stackView2.addArrangedSubview(button4)
    }
    
    private func addButtonsToStackView3() {
        let button1 = Button()
        button1.setTitle("4", for: .normal)
        button1.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button1.setTitleColor(.black, for: .normal)
        button1.backgroundColor = .systemGray4
        stackView3.addArrangedSubview(button1)
        
        let button2 = Button()
        button2.setTitle("5", for: .normal)
        button2.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button2.setTitleColor(.black, for: .normal)
        button2.backgroundColor = .systemGray4
        stackView3.addArrangedSubview(button2)
        
        let button3 = Button()
        button3.setTitle("6", for: .normal)
        button3.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button3.setTitleColor(.black, for: .normal)
        button3.backgroundColor = .systemGray4
        stackView3.addArrangedSubview(button3)
        
        let button4 = Button()
        button4.setTitle("—", for: .normal)
        button4.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button4.backgroundColor = .systemOrange
        stackView3.addArrangedSubview(button4)
    }
    
    private func addButtonsToStackView4() {
        let button1 = Button()
        button1.setTitle("7", for: .normal)
        button1.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button1.setTitleColor(.black, for: .normal)
        button1.backgroundColor = .systemGray4
        stackView4.addArrangedSubview(button1)
        
        let button2 = Button()
        button2.setTitle("8", for: .normal)
        button2.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button2.setTitleColor(.black, for: .normal)
        button2.backgroundColor = .systemGray4
        stackView4.addArrangedSubview(button2)
        
        let button3 = Button()
        button3.setTitle("9", for: .normal)
        button3.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button3.setTitleColor(.black, for: .normal)
        button3.backgroundColor = .systemGray4
        stackView4.addArrangedSubview(button3)
        
        let button4 = Button()
        button4.setTitle("x", for: .normal)
        button4.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 46.0)
        button4.backgroundColor = .systemOrange
        stackView4.addArrangedSubview(button4)
    }
    
    private func addButtonsToStackView5() {
        let button1 = Button()
        button1.setTitle("C", for: .normal)
        button1.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 37.0)
        button1.setTitleColor(.black, for: .normal)
        button1.backgroundColor = .lightGray
        button1.tintColor = .black
        stackView5.addArrangedSubview(button1)
        
        let button2 = Button()
        button2.setTitle("+/-", for: .normal)
        button2.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 37.0)
        button2.setTitleColor(.black, for: .normal)
        button2.backgroundColor = .lightGray
        stackView5.addArrangedSubview(button2)
        
        let button3 = Button()
        button3.setTitle("%", for: .normal)
        button3.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 37.0)
        button3.setTitleColor(.black, for: .normal)
        button3.backgroundColor = .lightGray
        stackView5.addArrangedSubview(button3)
        
        let button4 = Button()
        button4.setTitle("/", for: .normal)
        button4.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 43.0)
        button4.backgroundColor = .systemOrange
        stackView5.addArrangedSubview(button4)
    }
    
    private func configureTopViews() {
        topView1.backgroundColor = .black
        topView2.backgroundColor = .black
    }
    
    private func configureTitleLabel () {
        topView2.addSubview(label)
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 80, weight: UIFont.Weight.thin)
        label.textAlignment = .right
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        
        setTitleLabelConstraints()
    }
    
    private func setTitleLabelConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topView2.topAnchor, constant: 0),
            label.leadingAnchor.constraint(equalTo: topView2.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: topView2.trailingAnchor, constant: -20),
            label.bottomAnchor.constraint(equalTo: topView2.bottomAnchor, constant: 0)
        ])
    }
}


