

import UIKit

class ResumeViewController: UIViewController {
    
    @IBOutlet weak var resumeTV: UITextView!
    
    let artem = PersonModel(name: "Артем",
                            age: 33,
                            surname: "Пешков",
                            company: "Забор и капыта",
                            bioDetails: "Персонаж книги Эдуарда Успенского «Крокодил Гена и его друзья» и её продолжений. На экране впервые появился в мультипликационном фильме режиссёра Романа Качанова «Крокодил Гена», созданном по этой книге в 1969 году. Впоследствии вышли ещё три мультфильма Романа Качанова с крокодилом Геной и его друзьями.")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // объекту резюмеТВ присвоить текст из константы Артем все кроме био детал
        resumeTV.text = "Имя: \(artem.name)\n\nФамилия: \(artem.surname)\n\nВозраст: \(artem.age)\n\nКомпания: \(artem.company)"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //создаем переход на 2 контроллер называем его welcomeVC
        if let bioVC = segue.destination as? BioViewController {
            // нужно передать текст из loginText экрана в WelcomeLamle.text
            bioVC.biography = artem.bioDetails
          
        }
        
    }
}
