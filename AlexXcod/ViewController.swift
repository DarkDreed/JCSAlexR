import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rating1.isHidden = true
    }
    var game = TTT()
    @IBOutlet var rating1: UIButton!
    @IBOutlet var BOC: [UIButton]!
    @IBAction func reset(_ sender: UIButton) {
        game.reset()
        uV()
        rating1.isHidden = true
    }
    @IBOutlet weak var laWina: UILabel!
    @IBAction func BA(_ sender: UIButton)
    {
        let index = BOC.firstIndex(of: sender)!
        game.BUp(at: index)
        uV()
    }
    
    func uV() {
        for i in BOC.indices {
            let card = game.xos[i]
            let b = BOC[i]
            if card.iFU {
                b.setTitle(card.xo, for: .normal)
                b.isEnabled = false
            } else {
                b.setTitle("", for: .normal)
                b.isEnabled = true
            }
        }
        if let win = game.WinC()
        {
            laWina.text = "Победитель \(win)"
            for i in BOC {
                i.isEnabled = false
            }
            if win != "Ничья" {
                rating1.isHidden = false
            }
           
        }
        else {
            laWina.text = ""
            
        }
    }
}
        
    
    

