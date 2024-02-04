//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Daniel Moura on 04/02/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding()
                
                Spacer()
                FrameworkItemView(framework: framework)
                Text(framework.description)
                    .font(.body)
                    .padding(32)
                
                Button {
                    if let url = URL(string: framework.urlString) {
                        if UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url)
                        }
                    }
                } label: {
                    Text("Learn more")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .buttonStyle(.bordered)
                .padding()
                .tint(.orange)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: Binding.constant(true))
}
