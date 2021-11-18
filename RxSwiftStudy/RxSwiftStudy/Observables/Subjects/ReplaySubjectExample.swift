//
//  ReplaySubjectExample.swift
//  RxSwiftStudy
//
//  Created by Adam Herring on 11/18/21.
//

import SwiftUI
import RxSwift

struct ReplaySubjectExample: View {
    var body: some View {
        VStack {
            Button {
                replaySubjectExample()
            } label: {
                Label("Replay Subject", systemImage: "pencil")
            }
        }
    }
    
    // MARK: ReplaySubject
    
    enum MyError: Error {
        case anError
    }
    
    func replaySubjectExample() {
        /// create a new replay subject with a buffer size of 2, ReplaySubjects are initialized using the type method .create(bufferSize:)
        let subject = ReplaySubject<String>.create(bufferSize: 2)
        let disposeBag = DisposeBag()
        
        /// Add three elements onto the subject
        subject.onNext("1")
        subject.onNext("2")
        subject.onNext("3")
        
        /// create two subscriptions to the subject
        subject
            .subscribe {
                print("1) \($0)")
            }
            .disposed(by: disposeBag)
        
        subject
            .subscribe {
                print("2) \($0)")
            }
            .disposed(by: disposeBag)
        
        subject.onNext("4")
        
        subject.onError(MyError.anError)
//        subject.dispose()

        subject
            .subscribe {
                print("3) \($0)")
            }
            .disposed(by: disposeBag)
    }
}

struct ReplaySubjectExample_Previews: PreviewProvider {
    static var previews: some View {
        ReplaySubjectExample()
    }
}
