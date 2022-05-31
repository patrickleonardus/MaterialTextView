//
//  Validator.swift
//  MaterialTextView
//
//  Created by Mikhail Motyzhenkov on 05/03/2019.
//  Copyright © 2019 QIWI. All rights reserved.
//

import Foundation

public protocol Validatable {
	@discardableResult
	func validate() -> Bool
}

public enum ValidatorResult {
	case valid
	case invalid(info: HelpInfo)
}

public typealias Validator<T> = (T) -> ValidatorResult
public typealias EmptyClosure = () -> Void
