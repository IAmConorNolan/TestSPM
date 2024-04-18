//
//  SwiftUIView.swift
//  
//
//  Created by Conor Nolan on 18/04/2024.
//

import SwiftUI
import Nuke

public struct SwiftUIView: View {
    public var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear(perform: {
                ImagePipeline.shared.loadImage(
                    with: URL(string: "https://picsum.photos/200/300")!) { result in
                        print(result)
                    }
            })
    }
}

#Preview {
    SwiftUIView()
}
