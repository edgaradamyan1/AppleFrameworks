//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Edgar Adamyan on 14.03.25.
//

import SwiftUI

struct DetailView: View {
    
    var framework: FrameworkModel
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                }
                .padding()
            }
         

            Spacer()
            
            FrameworkTitleView(frameWork: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .sheet(isPresented: $isShowingSafariView) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.google.com")!)
            }

        }
    }
}


