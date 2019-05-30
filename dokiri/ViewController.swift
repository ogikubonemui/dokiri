import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func didClickBtn(_ sender: Any) {
        playMusic()

    }
}

extension ViewController: AVAudioPlayerDelegate {
    
    func playMusic() {
        if let music = NSDataAsset(name: "dokiri") {
            audioPlayer = try? AVAudioPlayer(data: music.data)
            audioPlayer.delegate = self
            audioPlayer.play()
        }
    }
}
