import UIKit

class PrasanjaViewController: UIViewController {

    @IBOutlet weak var prvaSlika: UIImageView!
    @IBOutlet weak var vtoraSlika: UIImageView!
    @IBOutlet weak var tretaSlika: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        prvaSlika.isHidden = true
        vtoraSlika.isHidden = true
        tretaSlika.isHidden = true
    }
    
    @IBAction func prvOdgovorPressed(_ sender: UIButton) {
        pokaziTocni()
    }
    
    @IBAction func vtorOdgovorIsPressed(_ sender: UIButton) {
        pokaziTocni()
    }
    
    @IBAction func tretOdgovorIsPressed(_ sender: UIButton) {
        pokaziTocni()
    }
    
    func pokaziTocni() {
        prvaSlika.isHidden = false
        vtoraSlika.isHidden = false
        tretaSlika.isHidden = false
        
        prvaSlika.image = UIImage(named: "Netocno")
        vtoraSlika.image = UIImage(named: "Tocno")
        tretaSlika.image = UIImage(named: "Netocno")
    }
    
}
