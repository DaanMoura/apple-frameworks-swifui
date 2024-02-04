//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Daniel Moura on 04/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List(MockData.frameworks) { framework in
                NavigationLink(destination: FrameworkDetailView(framework: framework)) {
                    FrameworkItemView(framework: framework)
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍎 Frameworks")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FrameworkGridView()
}
