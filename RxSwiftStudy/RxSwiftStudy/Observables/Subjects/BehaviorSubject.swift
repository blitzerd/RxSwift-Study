//
//  BehaviorSubject.swift
//  RxSwiftStudy
//
//  Created by Adam Herring on 11/18/21.
//

import SwiftUI
import RxSwift

struct BehaviorSubjectExample: View {
    var body: some View {
        VStack {
            Button {
                behaviorSubjectExample()
            } label: {
                Label("Behavior Subject", systemImage: "pencil")
            }
        }
    }
    
    // MARK: BehaviorSubject
    /// define an error type to use in upcoming examples
    enum MyError: Error {
        case anError
    }
    
    /// expanding upon the use of ternary operator in previous example, you create a helper function
    /// to print the element if there is one, an error if there is one, or else the event itself.
    
    /// start a new example - BehaviorSubject prints the latest element when the subscription is made
    func behaviorSubjectExample() {
        /// create a new BehaviorSubject instance. It's initializer takes an initial value
        let subject = BehaviorSubject(value: "Initial value")
        let disposeBag = DisposeBag()
        //        subject.onNext("X")
        subject
            .subscribe {
                print("1) \($0)")
            }
            .disposed(by: disposeBag)
        
        /// add an error event on the subject
        subject.onError(MyError.anError)
        
        /// create a new subscription to the subject
        subject
            .subscribe {
                print("2) \($0)")
            }
            .disposed(by: disposeBag)
    }
}

struct BehaviorSubject_Previews: PreviewProvider {
    static var previews: some View {
        BehaviorSubjectExample()
    }
}
