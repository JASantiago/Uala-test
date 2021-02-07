//
//  ReusableView.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import UIKit

protocol ReusableView: class {
    static var reuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
