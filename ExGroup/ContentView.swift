//
//  ContentView.swift
//  ExGroup
//
//  Created by 김종권 on 2022/08/20.
//

import SwiftUI

enum NotifyMeAboutType {
  case directMessages
  case mentions
  case anything
}

enum Flavor: String, CaseIterable, Identifiable {
  case chocolate, vanilla, strawberry
  var id: Self { self }
}

struct ContentView: View {
  @State var userAgreed = false
  let text = """
Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.

The following example sets up a GroupBox with the label “End-User Agreement”, and a long agreementText string in a Text view wrapped by a ScrollView. The box also contains a Toggle for the user to interact with after reading the text.
"""
  
  @State var notifyMeAbout = NotifyMeAboutType.directMessages
  @State var playNotificationSounds = false
  @State var sendReadReceipts = false
  
  @State private var selectedFlavor = Flavor.chocolate
  
  var body: some View {
    VStack {
//      GroupBox {
//        Text("Content")
//      }
//      GroupBox("title") {
//        Text("Content")
//      }
//      GroupBox(label: Label("End-User Agreement", systemImage: "building.columns")) {
//        ScrollView(.vertical, showsIndicators: true) {
//          Text(text)
//            .font(.footnote)
//        }
//        .frame(height: 100)
//        Toggle(isOn: $userAgreed) {
//          Text("I agree to the above terms")
//        }
//      }
      
      // Ex_Section_Form
//      Form {
//        Section(header: Text("Form_Section1")) {
//          Picker("Notify Me About", selection: $notifyMeAbout) {
//            Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
//            Text("Mentions").tag(NotifyMeAboutType.mentions)
//            Text("Anything").tag(NotifyMeAboutType.anything)
//          }
//          Toggle("Play notification sounds", isOn: $playNotificationSounds)
//          Toggle("Send read receipts", isOn: $sendReadReceipts)
//        }
//
//        Section(header: Text("Form_Section2")) {
//          Text("Section2 Contents")
//        }
//      }
      
      // Ex_Section_List
//      List {
//        Section("List_Section1") {
//          Text("Content1")
//        }
//        Section("List_Section2") {
//          Text("Content2")
//        }
//      }
      
      // Ex_Section_Picker
      Picker("Flavor", selection: $selectedFlavor) {
        Section(header: Text("Picker_Section1")) {
          Text("Chocolate").tag(Flavor.chocolate)
        }
        Section(header: Text("Picker_Section2")) {
          Text("Vanilla").tag(Flavor.vanilla)
          Text("Strawberry").tag(Flavor.strawberry)
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
