//
//  ChatBottomSheetViewController.swift
//  Firebase-Realm
//
//  Created by Mac on 17/05/2023.
//

import UIKit

class ChatBottomSheetViewController: UIViewController {
    
    lazy var recipientLabel: UILabel = {
        let label = UILabel()
        label.text = "Recipient's username"
        label.font = customFont(size: 18, font: .InterBold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0, green: 0.05751294643, blue: 0.1677117348, alpha: 1)
        //label.font = UIFont(name: "Inter-Bold", size: 24)
        return label
    }()
    
    lazy var usernameTextfield: UITextField = {
       let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        let attributes = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.631372549, green: 0.631372549, blue: 0.631372549, alpha: 1) ]
        textfield.attributedPlaceholder = NSAttributedString(string: "Enter username", attributes: attributes)
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfield.frame.height))
        textfield.leftView = leftView
        textfield.leftViewMode = .always
        textfield.backgroundColor = #colorLiteral(red: 0.862745098, green: 0.9647058824, blue: 0.9529411765, alpha: 1)
        return textfield
    }()
    
    lazy var startChatButton: Button = {
        let button = Button(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        //button.attr = customFont(size: <#T##CGFloat#>, font: <#T##FontFamily#>)
        button.setTitle("Start Chat", for: .normal)
        //button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.titleLabel?.font = customFont(size: 16, font: .InterSemiBold)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraint()
        view.backgroundColor = .white
    }
    

    func setupConstraint() {
        view.addSubview(recipientLabel)
        view.addSubview(usernameTextfield)
        view.addSubview(startChatButton)
        NSLayoutConstraint.activate([
            recipientLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            recipientLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33),
            
            usernameTextfield.topAnchor.constraint(equalTo: recipientLabel.bottomAnchor, constant: 15),
            usernameTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            usernameTextfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -38),
            usernameTextfield.heightAnchor.constraint(equalToConstant: 48),
            
            startChatButton.topAnchor.constraint(equalTo: usernameTextfield.bottomAnchor, constant: 32),
            startChatButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            startChatButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -38),
            startChatButton.widthAnchor.constraint(equalToConstant: 320),
            startChatButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
}
