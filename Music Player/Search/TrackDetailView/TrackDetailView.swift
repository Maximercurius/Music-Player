//
//  TrackDetailView.swift
//  Music Player
//
//  Created by Makarov_Maxim on 06.06.2022.
//

import UIKit
import SDWebImage
import AVKit

class TrackDetailView: UIView {
    
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var currentTime: UISlider!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var trackTitleLabel: UILabel!
    @IBOutlet weak var authorTitleLabel: UILabel!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    
    let player: AVPlayer = {
        let avPlayer = AVPlayer()
        avPlayer.automaticallyWaitsToMinimizeStalling = false
        return avPlayer
    } ()
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func set(viewModel: SearchViewModel.Cell) {
        trackTitleLabel.text = viewModel.trackName
        authorTitleLabel.text = viewModel.artistName
        playTrack(previewUrl: viewModel.previewUrl)
        let string600 = viewModel.iconUrlString?.replacingOccurrences(of: "100x100", with: "600x600")
        guard let url = URL(string: string600 ?? "") else { return }
        trackImageView.sd_setImage(with: url, completed: nil)
    }
    
    private func playTrack(previewUrl: String?) {
        print("music is On: \(previewUrl ?? "noTracks is available")")
        
        guard let url = URL(string: previewUrl ?? "") else {  return }
        let playerItem = AVPlayerItem(url: url)
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }
    
    @IBAction func handleCurrentTimeSlider(_ sender: Any) {
    }
    
    @IBAction func handleVolumeSlider(_ sender: Any) {
    }
    @IBAction func dragDownButtonTapped(_ sender: Any) {
        self.removeFromSuperview()
    }
    
    @IBAction func previousTrack(_ sender: Any) {
    }
    
    @IBAction func nextTrack(_ sender: Any) {
    }
    @IBAction func playPauseAction(_ sender: Any) {
        if player.timeControlStatus == .paused {
            player.play()
            playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
        } else {
            player.pause()
            playPauseButton.setImage(UIImage(named: "play"), for: .normal)
        }
    }
    
}
