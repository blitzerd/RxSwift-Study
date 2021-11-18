//
//  SupportCode.swift
//  RxSwiftStudy
//
//  Created by Adam Herring on 11/17/21.
//

import Foundation

public func example(of description: String,
                    action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}
