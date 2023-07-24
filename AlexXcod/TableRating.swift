import UIKit

class TableRating: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBOutlet var MI: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var score: UILabel!
}
