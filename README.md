# SwiftLoader - Fork with glass effects

This is a fork of leoru's [SwiftLoader](https://github.com/leoru/SwiftLoader) which defaults to iOS 8 Glass Effects instead of the animations present in the original version


**Thank you** - [Kirill Kunst](https://github.com/leoru) ([@kirill_kunst](https://twitter.com/kirill_kunst)) **For this software!**


SwiftLoader is a simple and beautiful activity indicator written in Swift.

###Example
<img src="https://raw.githubusercontent.com/najiji/SwiftLoader/master/images/screen.png">


## Usage

In case you installed SwiftLoader via CocoaPods you need to import it (add this somewhere at the top of your source code file):
```swift
import SwiftLoader
```

Show SwiftLoader without text:
```swift
  SwiftLoader.show()
```

Show SwiftLoader with text: 
```swift
  SwiftLoader.show(title: "Loading...")
```

Hide SwiftLoader:
```swift
  SwiftLoader.hide()
```

## Configuration
SwiftLoader has simple configuration system.

You need to create SwiftLoader.Config object, set params:
```swift
  var config : SwiftLoader.Config = SwiftLoader.Config()
  config.size = 150
  config.spinnerColor = .redColor()
  config.foregroundColor = .blackColor()
  config.foregroundAlpha = 0.5
```
and set new config for SwiftLoader:
```swift
  SwiftLoader.setConfig(config)
```

#### Current available params:

* size - Size of loader
* spinnerColor - Color of spinner view
* spinnerLineWidth - Line width of spinner view layer
* titleTextColor - Color of title text
* titleTextFont - Font of title text
* backgroundColor - Background color for loader
* foregroundColor - Foreground color for loader
* cornerRadius - Radius of corners of loader
* foregroundAlpha - Alpha property for foreground
* speed - speed of the circle. Default is 2.0
* foregroundGlassEffect - toggles glass effect


## Install
To install this fork of SwiftLoader using CocoaPods you have to specifically specify this repository:

```swift
pod 'SwiftLoader', :git => 'git://github.com/najiji/SwiftLoader'
```

To install the original version, just add 

```swift
pod 'SwiftLoader'
```

In case you don’t want to use CocoaPods - just copy the file SwiftLoader/SwiftLoader.swift to your Xcode project.

### Maintainers
- najiji
- [Kirill Kunst](https://github.com/leoru) ([@kirill_kunst](https://twitter.com/kirill_kunst))

## License

SwiftLoader is available under the MIT license. See the LICENSE file for more info.
