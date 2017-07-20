# XCSandboxViewer
iOS sandbox viewer in  the real phone ! iOS真机沙盒查看器 !

## Installation

- using CocoaPods

### Podfile
```
platform :ios, '7.0'
pod 'XCSandboxViewer'

```

```
pod update
pod install
```

## Usage

1. Start viewer .

>In AppDelegate.m   application:didFinishLaunchingWithOptions:
```    
#ifdef DEBUG
    [[XCSandboxViewer shareViewer] start];
#endif
    
```
2.Run App 


3.Open "Finder" ， press [ ⌘ + K ] , enter URL .

<img src="Screenshot/1.png" width=400px/>
<img src="Screenshot/2.png" width=400px/>
<img src="Screenshot/3.png" width=400px/>

4.Enjoy!




## MIT License

Copyright (c) 2017 XingCheng

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


