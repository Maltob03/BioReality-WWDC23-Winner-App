//
//  File.swift
//  
//
//  Created by Matteo Altobello on 05/04/23.
//

import Foundation
import SwiftUI

extension View {
    func fontSizeForDevice(iPhoneSize: CGFloat, iPadSize: CGFloat) -> some View {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return self.font(Font.system(size: iPadSize))
        } else {
            return self.font(Font.system(size: iPhoneSize))
        }
    }
}

