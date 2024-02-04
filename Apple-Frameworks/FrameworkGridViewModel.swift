//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Daniel Moura on 04/02/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
