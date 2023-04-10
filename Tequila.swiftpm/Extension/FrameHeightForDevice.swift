//
//  File.swift
//  
//
//  Created by Domenico Altobello on 06/04/23.
//

import Foundation
import SwiftUI

extension View {
    func frameHeightForDevice(iPhoneHeight: CGFloat, iPadHeight: CGFloat) -> some View {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return self.frame(height: iPadHeight)
        } else {
            return self.frame(height: iPhoneHeight)
        }
    }
}
