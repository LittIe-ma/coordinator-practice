//
//  ViewController.swift
//  coordinator-practice
//
//  Created by yasudamasato on 2021/12/28.
//

import UIKit

final class ViewController: UIViewController {

  @IBOutlet weak var button: UIButton! {
    didSet {
      button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
  }

  @objc private func didTapButton(_ sender: UIResponder) {
    Coordinator.shared.startVC(nowVC: self)
  }
}
