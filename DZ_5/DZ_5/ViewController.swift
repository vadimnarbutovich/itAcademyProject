import UIKit

class ViewController: UIViewController {

  @IBOutlet private weak var logoImage: UIImageView!
  @IBOutlet private weak var labelOnline: UILabel!
  @IBOutlet private weak var labelName: UILabel!
  @IBOutlet private weak var buttonEdit: UIButton!
  @IBOutlet private weak var DateOfBirth: UILabel!
  @IBOutlet private weak var Position: UILabel!
  @IBOutlet private weak var Company: UILabel!
  @IBOutlet private weak var Family: UILabel!
  @IBOutlet private weak var calculatorButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    viewSettings()
  }

  private func viewSettings() {
    logoSettings()
    onlineSettings()
    nameSettings()
    buttonSettings()
    personInfoSettings(text: dateOfBirth, element: DateOfBirth)
    personInfoSettings(text: position, element: Position)
    personInfoSettings(text: company, element: Company)
    let famly = "Женат"
    personInfoSettings(text: famly, element: Family)
  }

  private func logoSettings() {
    let image = UIImage(named: "avatar")
    logoImage.image = image
    logoImage.contentMode = .scaleAspectFill
  }

  private func onlineSettings(){
    let label = labelOnline
    label?.text = "Online"
    label?.textColor = .green
  }

  private func nameSettings(){
    let label = labelName
    label?.text = "Вадим Нарбутович"
    label?.textColor = .white
    label?.font = .boldSystemFont(ofSize: 22)
    label?.alpha = 1
  }

  private func buttonSettings(){
    let button = buttonEdit
    button?.setTitle("Изменить", for: .normal)
  }

  private func personInfoSettings(text: String, element: UILabel!){
    let label = element
    label?.text = text
    label?.textColor = .black
  }

  @IBAction private func buttonDidTap(){
    print("Кнопка Изменить нажата")
  }

  @IBAction private func goToCalculatorButton(){
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let secondVc = mainStoryboard.instantiateViewController(withIdentifier: "СalculatorViewController")
    navigationController?.pushViewController(secondVc, animated: true)
  }

  private let dateOfBirth = "03.11.1984"
  private let position = "Работник"
  private let company = "Компания"
  private let famly = "Женат"
}

