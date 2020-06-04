//
//  ViewController.swift
//   Ukrainskaya
//
//  Created by Олеся on 02.06.2020.
//  Copyright © 2020 Ukrainskaya Olesya. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let calendar = Calendar.current
    let nowTime = Date()
    let formDate = DateFormatter()
    
    @IBOutlet weak var launchLabel: UILabel!
    @IBOutlet weak var appearanceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formDate.dateStyle = .medium
        formDate.timeStyle = .medium
        showLaunch()
    }
    
    private func showLaunch () {
        launchLabel.text = formDate.string(from: nowTime)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAppearance()
    }
    
    @IBAction func updateItemPressed(_ sender: UIBarButtonItem) {
        showAppearance()
    }
    
    private func showAppearance() {
        let appear = Date()
        appearanceLabel.text = formDate.string(from: appear)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
