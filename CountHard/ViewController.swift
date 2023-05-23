//
//  ViewController.swift
//  CountHard
//
//  Created by Андрей Назаркин on 21.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var MinusButton: UIButton!
    @IBOutlet weak var PlusButton: UIButton!
    @IBOutlet weak var CounterLabel: UILabel!
    private var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TextView.isEditable = false
        TextView.text = "История изменений:\n "
    }
    @IBAction func ResetTap(_ sender: Any) {
        count = 0
        CounterLabel.text = "0"
        let date = Date()
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "dd/MM/yyyy hh/mm"
            
        TextView.text += formatter.string(from: date)
        TextView.text += ": Значение сброшено\n"
    }
    @IBAction func PlusTap(_ sender: Any) {
        count += 1
        CounterLabel.text = "Значение счетчика: \(count)"
        let date = Date()
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "dd/MM/yyyy hh/mm"
            
        TextView.text += formatter.string(from: date)
        TextView.text += ": Значение изменено на +1\n"
       
        
    }
    @IBAction func MinusTap(_ sender: Any) {
        let date = Date()
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "dd/MM/yyyy hh/mm"
            
        TextView.text += formatter.string(from: date)
        if count > 0 {
            count -= 1
            CounterLabel.text = "Значение счетчика: \(count)"
         TextView.text += ": Значение изменено на -1\n" }
        else  { TextView.text += ": Попытка уменьшить значение счетчика ниже 0\n" }
    
       
    }
   
}

