//
//  ContentView.swift
//  ExGroup
//
//  Created by 김종권 on 2022/08/20.
//

import SwiftUI

struct ContentView: View {
  @State var userAgreed = false
  let text = """
Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.

The following example sets up a GroupBox with the label “End-User Agreement”, and a long agreementText string in a Text view wrapped by a ScrollView. The box also contains a Toggle for the user to interact with after reading the text.
"""
  
  var body: some View {
    VStack {
      GroupBox {
        Text("Content")
      }
      GroupBox("title") {
        Text("Content")
      }
      GroupBox(label: Label("End-User Agreement", systemImage: "building.columns")) {
        ScrollView(.vertical, showsIndicators: true) {
          Text(text)
            .font(.footnote)
        }
        .frame(height: 100)
        Toggle(isOn: $userAgreed) {
          Text("I agree to the above terms")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
