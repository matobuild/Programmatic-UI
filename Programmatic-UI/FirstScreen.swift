//
//  FirstScreen.swift
//  Programmatic-UI
//
//  Created by kittawat phuangsombat on 2022/9/23.
//

import UIKit

class FirstScreen: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "FirstScreen"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setUpButton()
        
    }

    func setUpButton() {
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Next"
        
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

