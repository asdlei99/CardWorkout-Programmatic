//
//  CardSelectionViewController.swift
//  CardWorkout-Programmatic
//
//  Created by Juan Francisco Dorado Torres on 28/04/20.
//  Copyright © 2020 Juan Francisco Dorado Torres. All rights reserved.
//

import UIKit

class CardSelectionViewController: UIViewController {

  // MARK: - View Properties

  private let imageView = UIImageView()
  private let stopButton = CWButton(text: "Stop!", backgroundColor: .systemRed)
  private let restartButton = CWButton(text: "Restart", backgroundColor: .systemGreen)
  private let rulesButton = CWButton(text: "Rules", backgroundColor: .systemBlue)

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    configureViewController()
    configureImageView()
    configureStopButton()
    configureRestartAndRulesButtons()
  }

  // MARK: - Actions

  @objc private func rulesButtonDidTap(_ sender: UIButton) {
    let rulesVC = RulesViewController()
    present(rulesVC, animated: true)
  }
}

// MARK: - Configure Views

extension CardSelectionViewController {

  private func configureViewController() {
    view.backgroundColor = .systemBackground
  }

  private func configureImageView() {
    view.addSubview(imageView)
    imageView.image = UIImage(named: "AS")
    imageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75),
      imageView.heightAnchor.constraint(equalToConstant: 350),
      imageView.widthAnchor.constraint(equalToConstant: 250)
    ])
  }

  private func configureStopButton() {
    view.addSubview(stopButton)
    NSLayoutConstraint.activate([
      stopButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
      stopButton.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
      stopButton.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
      stopButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }

  private func configureRestartAndRulesButtons() {
    view.addSubview(restartButton)
    view.addSubview(rulesButton)
    rulesButton.addTarget(self, action: #selector(rulesButtonDidTap), for: .touchUpInside)
    NSLayoutConstraint.activate([
      restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20),
      restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
      restartButton.trailingAnchor.constraint(equalTo: rulesButton.leadingAnchor, constant: -20),
      restartButton.heightAnchor.constraint(equalToConstant: 50),
      restartButton.widthAnchor.constraint(equalTo: rulesButton.widthAnchor),

      rulesButton.topAnchor.constraint(equalTo: restartButton.topAnchor),
      rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
      rulesButton.bottomAnchor.constraint(equalTo: restartButton.bottomAnchor),
      rulesButton.widthAnchor.constraint(equalTo: restartButton.widthAnchor)
    ])
  }
}
