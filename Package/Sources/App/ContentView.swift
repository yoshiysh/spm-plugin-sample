//
//  ContentView.swift
//  SPMPlugin
//
//  Created by Yoshiki Hemmi on 2022/10/11.
//

import SwiftUI

public struct ContentView: View {
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(L10n.hello)
        }
        .padding()
    }
    
    public init() {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
