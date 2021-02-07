//
//  NibLoadableView.swift
//  Uala-test
//
//  Created by  Jose  Santiago on 7/2/21.
//

import UIKit

protocol NibLoadableView: class {
    static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

extension NibLoadableView where Self: UIViewController {
    static var nibName: String {
        return String(describing: self)
    }
}
