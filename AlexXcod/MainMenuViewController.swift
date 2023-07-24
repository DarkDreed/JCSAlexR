import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AIGame" {
            let destination = segue.destination as! ViewController
            destination.game.AIGame = true
        }
    }
}
