//
//  RulesViewController.swift
//  CardWorkout-Programmatic
//
//  Created by Juan Francisco Dorado Torres on 28/04/20.
//  Copyright © 2020 Juan Francisco Dorado Torres. All rights reserved.
//

import UIKit

class RulesViewController: UIViewController {

  // MARK: - View Properties

  private var titleLabel = UILabel()
  private var rulesLabel = UILabel()
  private var exerciseLabel = UILabel()

  // MARK: - Properties

  private var sidePadding: CGFloat = 30

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    configureViewController()
    configureTitleLabel()
    configureRulesLabel()
    configureExerciseLabel()
  }
}

// MARK: - Configure Views

extension RulesViewController {

  private func configureViewController() {
    view.backgroundColor = .systemBackground
  }

  private func configureTitleLabel() {
    view.addSubview(titleLabel)
    titleLabel.text = "Rules"
    titleLabel.font = .boldSystemFont(ofSize: 40)
    titleLabel.textAlignment = .center
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
      titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
      titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -sidePadding)
    ])
  }

  private func configureRulesLabel() {
    view.addSubview(rulesLabel)
    rulesLabel.text = "The value of each card represents the number of exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
    rulesLabel.font = .systemFont(ofSize: 17)
    rulesLabel.numberOfLines = 0
    rulesLabel.textAlignment = .center
    rulesLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
      rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: sidePadding),
      rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -sidePadding)
    ])
  }

  private func configureExerciseLabel() {
    view.addSubview(exerciseLabel)
    exerciseLabel.text = "♠️ = Push-up\n\n♥️ = Sit-up\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks"
    exerciseLabel.font = .systemFont(ofSize: 21, weight: UIFont.Weight.semibold)
    exerciseLabel.numberOfLines = 0
    exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 75),
      exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
}
