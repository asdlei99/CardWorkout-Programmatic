//
//  CWButton.swift
//  CardWorkout-Programmatic
//
//  Created by Juan Francisco Dorado Torres on 28/04/20.
//  Copyright © 2020 Juan Francisco Dorado Torres. All rights reserved.
//

import UIKit

class CWButton: UIButton {

  // MARK: - View Lifecycle

  init(text: String, backgroundColor: UIColor?) {
    super.init(frame: .zero)
    setTitle(text, for: .normal)
    self.backgroundColor = backgroundColor
    self.titleLabel?.font = .boldSystemFont(ofSize: 19)
    self.layer.cornerRadius = 8
    translatesAutoresizingMaskIntoConstraints = false
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
