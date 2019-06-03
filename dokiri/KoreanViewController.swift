import UIKit
import AVFoundation

class KoreanViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func checkBtn(_ sender: Any) {
        playMusic()
    }
}

extension KoreanViewController: AVAudioPlayerDelegate {
    
    func playMusic() {
        if let music = NSDataAsset(name: "dokiri") {
            audioPlayer = try? AVAudioPlayer(data: music.data)
            audioPlayer.delegate = self
            audioPlayer.play()
        }
    }
}
