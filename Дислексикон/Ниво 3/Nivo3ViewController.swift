import UIKit

class Nivo3ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.navigationBar.isHidden = false
        navigationItem.title = "Тест"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
