//
//  PublishRelays.swift
//  RxSwiftStudy
//
//  Created by Adam Herring on 11/18/21.
//

import SwiftUI
import RxSwift
import RxRelay

struct PublishRelayExample: View {
    var body: some View {
        VStack {
            Button {
                publishRelayExample()
            } label: {
                Label("Publish Relay", systemImage: "pencil")
            }
        }
    }
    
    // MARK: PublishRelay
    /// Guarenteed to never terminate
    func publishRelayExample() {
        let relay = PublishRelay<String>()
        
        let disposeBag = DisposeBag()
        
        /// nothing new from a publishSubject except the name and adding a new value - use the accept(: ) method
        relay.accept("Knock knock, anyone home?")
        
        relay
            .subscribe(onNext: {
                print($0)
            })
            .disposed(by: disposeBag)
        
        relay.accept("1")
    }
}

struct PublishRelayExample_Previews: PreviewProvider {
    static var previews: some View {
        PublishRelayExample()
    }
}
