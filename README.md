
# PageView

<div align="center">
  
  
<p align="center">
    <img src="https://img.shields.io/badge/iOS-14.0+-blue.svg" />
    <img src="https://img.shields.io/badge/Swift-5.0-brightgreen.svg" />
</p>
  
</div>

Current version: 1.0.0 [[Download](https://github.com/timdubbins/PageView/archive/refs/tags/v1.0.0.zip)]

A simple PageView implementation for SwiftUI. A benefit to using this implementation is that it works with `ignoresSafeArea(:)`, whereas the `PageTabViewStyle()` modifier for `TabView` currently does not.

<img src="https://github.com/timdubbins/demo_content/blob/master/PageView/PageView_demo.gif" width="350"/>

## Getting Started 

To use *PageView* in a project, in Xcode go to
```
File > Add Packages...
``` 
and enter
```
https://github.com/timdubbins/pageview
```
as the package URL. 

Finally add an `import PageView` statement at the top of your view file.

## Usage

```
var body: some View {
    PageView {
        pageOne
        pageTwo
        Text("Last page")
    }
    .ignoresSafeArea()
}

var pageOne: some View {
    ZStack {
        Color.red
        Text("Page 1")
    }
}

var pageTwo: some View {
    ZStack {
        Color.green
        Text("Page 2")
    }
}
```
