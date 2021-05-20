//
//  CRPickerButtonDelegate.swift
//  CRPickerButton
//
//  Created by Insu Byeon on 2021/05/20.
//

import UIKit

public protocol CRPickerButtonDelegate: AnyObject {
  func pickerView(_ pickerView: UIPickerView, titleForRow: Int)
}
