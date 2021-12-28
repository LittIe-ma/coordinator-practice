//
//  SecondViewController.swift
//  coordinator-practice
//
//  Created by yasudamasato on 2021/12/28.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
  func tapButtonDelegate2(nowVC: SecondViewController)
}

final class SecondViewController: UIViewController {

  weak var delegate: SecondViewControllerDelegate?

  @IBOutlet private weak var button: UIButton! {
    didSet {
      button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
  }

  @objc private func didTapButton(_ sender: UIResponder) {
    delegate?.tapButtonDelegate2(nowVC: self)
  }
}
