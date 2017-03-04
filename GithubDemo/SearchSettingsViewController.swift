//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Swapnil Tamrakar on 3/3/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController {
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var settings = GithubRepoSearchSettings()
    weak var delegate: SettingsPresentingViewControllerDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = Float(settings.minStars)
        sliderLabel.text = "\(Int(settings.minStars))"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderLabel.text = "\(Int(slider.value))"
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true) {
        self.settings.minStars = Int(self.slider.value)
        self.delegate?.didSaveSettings(settings: self.settings)
        }
    }

    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true) {
         self.delegate?.didCancelSettings()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
