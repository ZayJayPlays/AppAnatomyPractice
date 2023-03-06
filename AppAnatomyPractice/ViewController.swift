//
//  ViewController.swift
//  AppAnatomyPractice
//
//  Created by Zane Jones on 3/3/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelDidFinishLaunch: UILabel!
    var countDidFinishLaunch = 0
    @IBOutlet var labelConfigurationForConnecting: UILabel!
    var countConfigurationForConnecting = 0
    @IBOutlet var labelSceneWillConnect: UILabel!
    var countSceneWillConnect = 0
    @IBOutlet var labelSceneDidBecomeActive: UILabel!
    var countSceneDidBecomeActive = 0
    @IBOutlet var labelSceneWillResign: UILabel!
    var countSceneWillResign = 0
    @IBOutlet var labelSceneWillEnterForeground: UILabel!
    var countSceneWillEnterForeground = 0
    @IBOutlet var labelSceneDidEnterBackground: UILabel!
    var countSceneDidEnterBackground = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        labelDidFinishLaunch.text = "App launched \(appDelegate.launchCount) times."
        labelSceneWillResign.text = "Scene Resigned \(countSceneWillResign) times"
        labelSceneWillConnect.text = "Scene connected \(countSceneWillConnect) times"
        labelConfigurationForConnecting.text = "ConfigurationForConnecting count: \(countConfigurationForConnecting)"
        labelSceneDidBecomeActive.text = "Scene became active \(countSceneDidBecomeActive) times"
        labelSceneDidEnterBackground.text = "Scene entered background \(countSceneDidEnterBackground) times"
        labelSceneWillEnterForeground.text = "Scene entered foreground \(countSceneWillEnterForeground) times"
    }


}

