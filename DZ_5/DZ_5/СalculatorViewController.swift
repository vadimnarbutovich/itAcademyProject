import UIKit

class СalculatorViewController: UIViewController {

//  @IBOutlet private weak var screenView: UIView!
//  @IBOutlet private weak var button: UIButton!

  override func viewDidLoad() {
      super.viewDidLoad()
      viewSettings()
  }

  private func viewSettings() {
      screenSettings()
      buttonsSettings()
  }

  let screenView = UIView()

  private func screenSettings() {
      screenView.backgroundColor = .gray
      screenView.translatesAutoresizingMaskIntoConstraints = false
      view.addSubview(screenView)

      NSLayoutConstraint.activate([
          screenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0.0),
          screenView.heightAnchor.constraint(equalToConstant: 200),
          screenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
          screenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
      ])
  }

  private let buttonTitles = ["С", "←", "%", "/"]
  private var buttons = [UIButton]()

  private func buttonsSettings() {
      let stackView = UIStackView()
      stackView.axis = .horizontal
      stackView.distribution = .fillEqually
      stackView.spacing = 1
      stackView.translatesAutoresizingMaskIntoConstraints = false
      view.addSubview(stackView)

      NSLayoutConstraint.activate([
          stackView.topAnchor.constraint(equalTo: screenView.bottomAnchor, constant: 0.0),
          stackView.heightAnchor.constraint(equalToConstant: 100),
          stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
          stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
      ])

      for title in buttonTitles {
          let button = UIButton()
          button.backgroundColor = .blue
          button.translatesAutoresizingMaskIntoConstraints = false
          button.setTitle(title, for: .normal)
          button.setTitleColor(.white, for: .normal)
          button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
          stackView.addArrangedSubview(button)
          buttons.append(button)
      }

    for title in buttonTitles {
        let button = UIButton()
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        stackView.addArrangedSubview(button)
        buttons.append(button)
    }
  }

  @objc private func buttonTap() {
      print("tappedButton")
  }
}
