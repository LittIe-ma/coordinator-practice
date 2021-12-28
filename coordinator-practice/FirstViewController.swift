//
//  ViewController.swift
//  coordinator-practice
//
//  Created by yasudamasato on 2021/12/28.
//

import UIKit

protocol FirstViewControllerDelegate: AnyObject {
  func tapButtonDelegate1(nowVC: FirstViewController)
}

final class FirstViewController: UIViewController {

  weak var delegate: FirstViewControllerDelegate?

  @IBOutlet private weak var button: UIButton! {
    didSet {
      button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
  }

  @objc private func didTapButton(_ sender: UIResponder) {
    delegate?.tapButtonDelegate1(nowVC: self)
  }
}
