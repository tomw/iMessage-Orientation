//
//  iMessage+Orientation.swift
//
//  Copyright (c) 2016 Tom Weightman
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

extension UIView {

    var iMessageExtensionOrientation: UIDeviceOrientation {

        if let window = self.window {

            let fixedPoint = self.convert(CGPoint(x: 1, y: 1), to: window.screen.fixedCoordinateSpace)

            switch (fixedPoint.x > 0, fixedPoint.y > 0) {

            case (true, false):
                return .landscapeLeft

            case (false, true):
                return .landscapeRight

            case (false, false):
                return .portraitUpsideDown

            default:
                return .portrait

            }

        }

        return .unknown

    }

}
