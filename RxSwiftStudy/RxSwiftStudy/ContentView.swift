//
//  ContentView.swift
//  RxSwiftStudy
//
//  Created by Adam Herring on 11/17/21.
//

import SwiftUI
import RxSwift

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                Observables()
                } footer: {
                    Text("Press each button for correlating console output")
                }
                
                Section("Subjects") {
                    PublishSubjectExample()
                    BehaviorSubjectExample()
                    ReplaySubjectExample()
                }
                
                Section("Relays") {
                    PublishRelayExample()
                    BehaviorRelayExample()
                }
            }
            .navigationTitle("RxSwift")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
