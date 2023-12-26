import UIKit

class ViewController: UIViewController {

  @IBOutlet private weak var logoImage: UIImageView!
  @IBOutlet private weak var labelOnline: UILabel!
  @IBOutlet private weak var labelName: UILabel!
  @IBOutlet private weak var buttonEdit: UIButton!
  @IBOutlet private weak var dateOfBirth: UILabel!
  @IBOutlet private weak var position: UILabel!
  @IBOutlet private weak var company: UILabel!
  @IBOutlet private weak var family: UILabel!
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
    personInfoSettings(text: myDateOfBirth, element: dateOfBirth)
    personInfoSettings(text: myPosition, element: position)
    personInfoSettings(text: myCompany, element: company)
    personInfoSettings(text: myFamly, element: family)
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

  private let myDateOfBirth = "03.11.1984"
  private let myPosition = "Работник"
  private let myCompany = "Компания"
  private let myFamly = "Женат"
}

