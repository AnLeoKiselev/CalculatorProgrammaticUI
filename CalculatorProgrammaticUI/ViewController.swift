//
//  ViewController.swift
//  CalculatorProgrammaticUI
//
//  Created by Anatoliy on 29.10.2022.
//

import UIKit

//https://youtu.be/_DADWRicrGU

class ViewController: UIViewController {
    
    private lazy var parentStackView = UIStackView()
    
    private lazy var stackView1 = UIStackView()
    private lazy var stackView2 = UIStackView()
    private lazy var stackView3 = UIStackView()
    private lazy var stackView4 = UIStackView()
    private lazy var stackView5 = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureParentStackView()
    }
    
    private func configureParentStackView() {
        view.addSubview(parentStackView)
        parentStackView.axis = .vertical
        parentStackView.distribution = .fillEqually
        parentStackView.spacing = 20
        
        setParentStackViewConstraints()
        configureStackView()
        
            addButtonsToStackView1()
            addButtonsToStackView2()
            addButtonsToStackView3()
            addButtonsToStackView4()
            addButtonsToStackView5()
    
            parentStackView.addArrangedSubview(stackView5)
            parentStackView.addArrangedSubview(stackView4)
            parentStackView.addArrangedSubview(stackView3)
            parentStackView.addArrangedSubview(stackView2)
            parentStackView.addArrangedSubview(stackView1)
    }
    
    private func setParentStackViewConstraints() {
        parentStackView.translatesAutoresizingMaskIntoConstraints = false
        parentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        parentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        parentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        parentStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
    }
    
    private func configureStackView() {
        stackView1.axis = .horizontal
        stackView1.distribution = .fillEqually
        stackView1.spacing = 2
        
        stackView2.axis = .horizontal
        stackView2.distribution = .fillEqually
        stackView2.spacing = 2

        stackView3.axis = .horizontal
        stackView3.distribution = .fillEqually
        stackView3.spacing = 2

        stackView4.axis = .horizontal
        stackView4.distribution = .fillEqually
        stackView4.spacing = 2

        stackView5.axis = .horizontal
        stackView5.distribution = .fillEqually
        stackView5.spacing = 2

    }
    private func addButtonsToStackView1() {
        let button1 = Button()
        button1.setTitle("0", for: .normal)
        stackView1.addArrangedSubview(button1)
        let button2 = Button()
        button2.setTitle("0", for: .normal)
        stackView1.addArrangedSubview(button2)
        let button3 = Button()
        button3.setTitle(",", for: .normal)
        stackView1.addArrangedSubview(button3)
        let button4 = Button()
        button4.setTitle("=", for: .normal)
        stackView1.addArrangedSubview(button4)
    }
    
    private func addButtonsToStackView2() {
        let button1 = Button()
        button1.setTitle("1", for: .normal)
        stackView2.addArrangedSubview(button1)
        let button2 = Button()
        button2.setTitle("2", for: .normal)
        stackView2.addArrangedSubview(button2)
        let button3 = Button()
        button3.setTitle("3", for: .normal)
        stackView2.addArrangedSubview(button3)
        let button4 = Button()
        button4.setTitle("+", for: .normal)
        stackView2.addArrangedSubview(button4)
    }

    private func addButtonsToStackView3() {
        let button1 = Button()
        button1.setTitle("4", for: .normal)
        stackView3.addArrangedSubview(button1)
        let button2 = Button()
        button2.setTitle("5", for: .normal)
        stackView3.addArrangedSubview(button2)
        let button3 = Button()
        button3.setTitle("6", for: .normal)
        stackView3.addArrangedSubview(button3)
        let button4 = Button()
        button4.setTitle("-", for: .normal)
        stackView3.addArrangedSubview(button4)
    }

    private func addButtonsToStackView4() {
        let button1 = Button()
        button1.setTitle("7", for: .normal)
        stackView4.addArrangedSubview(button1)
        let button2 = Button()
        button2.setTitle("8", for: .normal)
        stackView4.addArrangedSubview(button2)
        let button3 = Button()
        button3.setTitle("9", for: .normal)
        stackView4.addArrangedSubview(button3)
        let button4 = Button()
        button4.setTitle("x", for: .normal)
        stackView4.addArrangedSubview(button4)
    }

    private func addButtonsToStackView5() {
        let button1 = Button()
        button1.setTitle("C", for: .normal)
        stackView5.addArrangedSubview(button1)
        let button2 = Button()
        button2.setTitle("+/-", for: .normal)
        stackView5.addArrangedSubview(button2)
        let button3 = Button()
        button3.setTitle("%", for: .normal)
        stackView5.addArrangedSubview(button3)
        let button4 = Button()
        button4.setTitle("/", for: .normal)
        stackView5.addArrangedSubview(button4)
    }
    
}
