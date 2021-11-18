//
//  BehaviorRelay.swift
//  RxSwiftStudy
//
//  Created by Adam Herring on 11/18/21.
//

import SwiftUI

struct BehaviorRelayExample: View {
    var body: some View {
        VStack {
            Button {
                behaviorRelayExample()
            } label: {
                Label("Behavior Relay", systemImage: "pencil")
            }
        }
    }
    
    func behaviorRelayExample() {
        //
    }
}

struct BehaviorRelay_Previews: PreviewProvider {
    static var previews: some View {
        BehaviorRelayExample()
    }
}
