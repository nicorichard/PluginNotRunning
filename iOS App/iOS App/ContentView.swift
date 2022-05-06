//
//  ContentView.swift
//  iOS App
//
//  Created by Ryan Zulkoski on 5/6/22.
//

import Localization
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(L10n.LaunchScreen.welcomeMessage)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
