import UIKit

class VController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet var winnerText:UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rating" {
            let destination = segue.destination as! ratingVC
            if winnerText.text != "" {
                var playerNew = true
                for i in playerData.player.indices {
                    if playerData.player[i].name == winnerText.text {
                        playerData.player[i].score += 10
                        playerNew = false
                    }
                }
                if playerNew {
                    playerData.player.append(Player(name:winnerText.text, image:UIImage.init(named:"test1.jpg"),score: 10))
                }
            }
        }
    }
   

}
