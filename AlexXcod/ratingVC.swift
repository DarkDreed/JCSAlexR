import UIKit

class ratingVC:UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableV.dequeueReusableCell(withIdentifier:"mC") as! TableRating
        cell.MI.image = player[indexPath.row].image
        cell.name.text = player[indexPath.row].name
        cell.score.text = String(player[indexPath.row].score)
        return cell
    }
    
    var player = playerData.player
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableV.delegate = self
        TableV.dataSource = self
        var sortbuffer: Player
        for i in 0..<playerData.player.count - 1{
            for j in 0..<playerData.player.count - 1{
                if playerData.player[j].score<playerData.player[j+1].score{
                    sortbuffer = playerData.player[j+1]
                    playerData.player[j+1] = playerData.player[j]
                    playerData.player[j] = sortbuffer
                }
            }
        }
        player = playerData.player
    }
    @IBOutlet var TableV: UITableView!
}
