import UIKit
import AVFoundation

class EnglishViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func checkBtn(_ sender: Any) {
        playMusic()
    }
}

extension EnglishViewController: AVAudioPlayerDelegate {
    
    func playMusic() {
        if let music = NSDataAsset(name: "dokiri") {
            audioPlayer = try? AVAudioPlayer(data: music.data)
            audioPlayer.delegate = self
            audioPlayer.play()
        }
    }
}
