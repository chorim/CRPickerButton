//
//  ViewController.swift
//  CRPickerButton
//
//  Created by chorim on 05/20/2021.
//  Copyright (c) 2021 chorim. All rights reserved.
//

import UIKit
import CRPickerButton

class ViewController: UIViewController {
  
  @IBOutlet weak var stackView: UIStackView!
  @IBOutlet weak var buttonFromStoryboard: CRPickerButton!
  
  var data = [String](["Hello", "World", "CRPickerButton", "Easy to use!"])
  
  lazy var button: CRPickerButton = {
    let b = CRPickerButton()
    b.setTitle("Built by Code", for: .normal)
    b.backgroundColor = .black
    b.tintColor = .white
    b.titleLabel?.font = .systemFont(ofSize: 15, weight: .regular)
    b.translatesAutoresizingMaskIntoConstraints = false
    return b
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    stackView.addArrangedSubview(button)
    NSLayoutConstraint.activate([
      // Width anchor will be automated set constant to 140(equal to storyboard button) by UIStackView
      button.heightAnchor.constraint(equalToConstant: 40)
    ])
    
    [button, buttonFromStoryboard].compactMap({ $0 }).forEach({ button in
      button.pickerViewDelegate = self
      button.pickerViewDataSource = self
      button.delegate = self
      button.setTitleForDoneButton("Complete", color: .red)
      button.setTitleForCloseButton("Dismiss")
    })
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate, CRPickerButtonDelegate {
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }

  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return data.count
  }

  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return data[row]
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    print("didSelect", data[row])
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow: Int) {
    print("Done Button Detected", data[titleForRow])
  }
}
