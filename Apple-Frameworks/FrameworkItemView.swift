//
//  FrameworkItemView.swift
//  Apple-Frameworks
//
//  Created by Daniel Moura on 04/02/24.
//

import SwiftUI

struct FrameworkItemView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 48, height: 48)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}

#Preview {
    FrameworkItemView(framework: MockData.sampleFramework)
}
