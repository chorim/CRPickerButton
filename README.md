# CRPickerButton
A simple UIPickerView + UIButton UI component. Written in Swift.

[![CI Status](https://img.shields.io/travis/chorim/CRPickerButton.svg?style=flat)](https://travis-ci.org/chorim/CRPickerButton)
[![Version](https://img.shields.io/cocoapods/v/CRPickerButton.svg?style=flat)](https://cocoapods.org/pods/CRPickerButton)
[![License](https://img.shields.io/cocoapods/l/CRPickerButton.svg?style=flat)](https://cocoapods.org/pods/CRPickerButton)
[![Platform](https://img.shields.io/cocoapods/p/CRPickerButton.svg?style=flat)](https://cocoapods.org/pods/CRPickerButton)

## Preview
<img src="https://user-images.githubusercontent.com/11539551/118927160-56e71480-b97c-11eb-9b4b-91bddae239c4.png" data-canonical-src="https://user-images.githubusercontent.com/11539551/118927160-56e71480-b97c-11eb-9b4b-91bddae239c4.png" width="360" height="700" />

## Requirements
- Swift 4 or greater
- iOS 9.0 or greater

## How to setup?
### CocoaPods
```code
pod 'CRPickerButton'
```

## How to use it?

### Storyboard
<img width="512" alt="image" src="https://user-images.githubusercontent.com/11539551/118927329-931a7500-b97c-11eb-993f-f1cb45debf5b.png">
<img width="270" alt="image" src="https://user-images.githubusercontent.com/11539551/118927641-12a84400-b97d-11eb-91c5-323b1126d8b9.png">

Make an UIButton then, Set class to `CRPickerButton`.
If you want see more details, open project `Example/` :)

### Code
```swift
lazy var button: CRPickerButton = {
    let b = CRPickerButton()
    b.setTitle("Built by Code", for: .normal)
    b.backgroundColor = .black
    b.tintColor = .white
    b.titleLabel?.font = .systemFont(ofSize: 15, weight: .regular)
    b.translatesAutoresizingMaskIntoConstraints = false
    b.pickerViewDelegate = self // UIPickerViewDelegate
    b.pickerViewDataSource = self // UIPickerViewDataSource
    b.delegate = self // CRPickerButtonDelegate
    b.setTitleForDoneButton("Complete", color: .red)
    b.setTitleForCloseButton("Dismiss")
    return b
}()
```
