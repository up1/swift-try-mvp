import UIKit

struct User {
    let username = "Somkiat"
    let thumbnailImageName = "try_first.png"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    var currentUser: User!
    
    override func viewDidLoad() {
        self.currentUser = User()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard let currentUser = self.currentUser else { return }
        self.usernameLabel.text = currentUser.username
        self.thumbnailImageView.image = UIImage(named: currentUser.thumbnailImageName)
    }

}

