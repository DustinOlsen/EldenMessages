//
//  MessageTemplates.swift
//  EldenMessages
//
//  Created by Dustin Olsen on 4/22/22.
//

import Foundation



var template = ["**** ahead", "No **** ahead", "**** required ahead", "Be wary of ****", "Try ****", "Likely ****", "First off, ****", "Seek ****", "Still no ****...", "Why is it always ****?", "If only I had a ****", "Didn't Expect ****...", "Visions of ****", "Could this be a ****?", "Time for ****", "****, O, ****", "Behold, ****!", "Offer ****", "Praise the ****!", "Let there be ****", "Ahh, ****...", "****", "****!", "****?", "****..."]

var selectedTemplate = "Praise the ****!"
var selection = "Skeleton"

func createMessage(template: String, selection: String) -> String {
    
    let filledTemplate = template.replacingOccurrences(of: "****", with: selection)
    
    
    return filledTemplate
}
