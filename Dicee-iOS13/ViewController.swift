import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let images = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    var leftDiceNumber = 5
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = images[leftDiceNumber]
        diceImageView2.image = images[rightDiceNumber]
        
        leftDiceNumber = (leftDiceNumber + 1) % images.count
        rightDiceNumber = rightDiceNumber > 0 ? rightDiceNumber - 1 : images.count - 1
    }
    
}

