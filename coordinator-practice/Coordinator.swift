//
//  Coordinator.swift
//  coordinator-practice
//
//  Created by yasudamasato on 2021/12/28.
//

import UIKit

final class Coordinator {
  static let shared = Coordinator()
  private init() {}

  func startVC(nowVC: UIViewController) {
    guard
      let nav = nowVC.navigationController,
      let vc = UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as? FirstViewController
    else {
      return
    }
    vc.delegate = self
    nav.pushViewController(vc, animated: true)
  }
}

extension Coordinator: FirstViewControllerDelegate {
  func tapButtonDelegate1(nowVC: FirstViewController) {
    guard
      let nav = nowVC.navigationController,
      let vc = UIStoryboard.init(name: "Second", bundle: nil).instantiateInitialViewController() as? SecondViewController
    else {
      return
    }
    vc.delegate = self
    nav.pushViewController(vc, animated: true)
  }
}

extension Coordinator: SecondViewControllerDelegate {
  func tapButtonDelegate2(nowVC: SecondViewController) {
    guard
      let nav = nowVC.navigationController,
      let vc = UIStoryboard.init(name: "Third", bundle: nil).instantiateInitialViewController() as? ThirdViewController
    else {
      return
    }
    nav.pushViewController(vc, animated: true)
  }
}
