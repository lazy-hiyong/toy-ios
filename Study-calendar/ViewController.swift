//
//  ViewController.swift
//  Study-calendar
//
//  Created by Jerry on 2023/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "용제리"
        label.textColor = UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let changeButton: UIButton = {
        let button = UIButton()
        button.setTitle("변경", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.nameLabel)
        self.view.addSubview(self.changeButton)
        
        self.changeButton.addTarget(self, action: #selector(self.didSelectChangeButton(_:)), for: .touchUpInside)
        
        self.setView()
        self.setLayoutConstrants()
    }
    
    func setView() {
        self.view.backgroundColor = .white
    }
    
    func setLayoutConstrants() {
        NSLayoutConstraint.activate([
            self.nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.nameLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            self.changeButton.centerXAnchor.constraint(equalTo: self.nameLabel.centerXAnchor),
            self.changeButton.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 30)
        ])
    }
    
    @objc func didSelectChangeButton(_ sender: UIButton) {
        print("버튼 클릭")
        sender.setTitleColor(.cyan, for: .normal)
        
        self.nameLabel.text = "yongjerry"
        
    }
}

