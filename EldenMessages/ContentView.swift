//
//  ContentView.swift
//  EldenMessages
//
//  Created by Dustin Olsen on 4/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTemplate = ""
    @State var selectedTemplateTwo = ""
    @State var twoPart = false
//    var message = createMessage(template: selectedTemplate, selection: selection)
    
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Text(selectedTemplate)
            
            Picker("Template", selection: $selectedTemplate) {
                ForEach(template, id: \.self) { phrase in
                    Text(phrase)
                }
            }
            .padding()
            
            if twoPart {
                
                Text("and then")
                
                Picker("Template", selection: $selectedTemplateTwo) {
                    ForEach(template, id: \.self) { phrase in
                        Text(phrase)
                    }
                }
                .padding()
            }
                
            
            
            Spacer()
            
            Button("Advanced") {
                twoPart.toggle()
            }
            .padding()
            .buttonStyle(.bordered)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
