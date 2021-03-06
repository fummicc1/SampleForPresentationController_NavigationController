//
//  ViewController.swift
//  SampleProject_PresentationController
//
//  Created by Fumiya Tanaka on 2019/01/20.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    let vc = NavigationController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setSegueButton()
    }

    func setSegueButton() {
        let button = UIButton(frame: CGRect(origin: .zero, size: CGSize(width: 200, height: 200)))
        button.center = view.center
        button.setTitle("モーダルビュー", for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "モーダルビュー", attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue]), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(presentVC), for: UIControl.Event.touchUpInside)
        view.addSubview(button)
    }
    
    @objc func presentVC() {
        vc.viewControllers = [ModalViewController()]
        present(vc, animated: true, completion: nil)
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return PresentationController(presentedViewController: presented, presenting: presenting)
    }

}
