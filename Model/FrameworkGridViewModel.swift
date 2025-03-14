//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Edgar Adamyan on 14.03.25.
//
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFrameWork: FrameworkModel? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
