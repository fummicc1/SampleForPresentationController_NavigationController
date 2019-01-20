//
//  ModalViewController.swift
//  SampleProject_PresentationController
//
//  Created by Fumiya Tanaka on 2019/01/20.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    let vc = ModalSecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setSegueButton()
    }
    
    func setSegueButton() {
        let button = UIButton(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 200)))
        button.center = view.center
        button.setTitle("モーダルビュー", for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "モーダルビュー", attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue]), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(pushVC), for: UIControl.Event.touchUpInside)
        view.addSubview(button)
    }
    
    @objc func pushVC() {
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
