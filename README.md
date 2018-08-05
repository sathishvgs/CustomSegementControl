# CustomSegmentControl

[![CI Status](https://img.shields.io/travis/vgsathish1995@gmail.com/CustomSegmentControl.svg?style=flat)](https://travis-ci.org/vgsathish1995@gmail.com/CustomSegmentControl)
[![Version](https://img.shields.io/cocoapods/v/CustomSegmentControl.svg?style=flat)](https://cocoapods.org/pods/CustomSegmentControl)
[![License](https://img.shields.io/cocoapods/l/CustomSegmentControl.svg?style=flat)](https://cocoapods.org/pods/CustomSegmentControl)
[![Platform](https://img.shields.io/cocoapods/p/CustomSegmentControl.svg?style=flat)](https://cocoapods.org/pods/CustomSegmentControl)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

This Pod requires the deployment target of iOS 9.0 or greater. Supports Swift 4

## Usage

```
  let customSegmented = CustomSegmented(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50), buttonTitles: ["On", "Off", "Neutral", "Custom"])
        
  customSegmented.onsegmentTapped = self
  customSegmented.configViews()
  view.addSubview(customSegmented)
```

## Installation

CustomSegmentControl is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CustomSegmentControl'
```

## Author

vgsathish1995@gmail.com, vgsathish1995@gmail.com

## License

CustomSegmentControl is available under the MIT license. See the LICENSE file for more info.
