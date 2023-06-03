//
//  File.swift
//  
//
//  Created by Matteo Altobello on 05/04/23.
//

import Foundation
import SwiftUI


extension View {
    func frameSizeForDevice(iPhoneSize: CGSize, iPadSize: CGSize) -> some View {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return self.frame(width: iPadSize.width, height: iPadSize.height)
        } else {
            return self.frame(width: iPhoneSize.width, height: iPhoneSize.height)
        }
    }
}


