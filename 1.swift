//
//  ViewController.swift
//  enjoiEveryDay
//
//  Created by Danil Bochkarev on 16.08.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
    //что будет делаться после загрузки экрана
    //добавил скругление кнопки
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 12
    }
    
    
    @IBAction func datePiker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслождаешься жизнью уже \(numberOfDays)"
    }
    
}

