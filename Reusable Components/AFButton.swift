//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Edgar Adamyan on 14.03.25.
//

import SwiftUI

struct AFButton: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundStyle(.white)
            .bold()
            .frame(width: 350, height: 55)
            .background(Color.red)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "test")
}
