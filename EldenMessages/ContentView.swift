//
//  ContentView.swift
//  EldenMessages
//
//  Created by Dustin Olsen on 4/22/22.
//

import SwiftUI

struct ContentView: View {
    
    var message = createMessage(template: selectedTemplate, selection: selection)
    
    var body: some View {
        Text(message)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
