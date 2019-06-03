import UIKit
import AVFoundation

class ChineseViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func checkBtn(_ sender: Any) {
        playMusic()
    }
}

extension ChineseViewController: AVAudioPlayerDelegate {
    
    func playMusic() {
        if let music = NSDataAsset(name: "dokiri") {
            audioPlayer = try? AVAudioPlayer(data: music.data)
            audioPlayer.delegate = self
            audioPlayer.play()
        }
    }
}
