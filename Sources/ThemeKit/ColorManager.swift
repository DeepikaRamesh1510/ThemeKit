//
//  ColorManager.swift
//  
//
//  Created by Deepika on 18/10/21.
//

import UIKit

public protocol ColorThemeProtocol {
	var primary: UIColor { get }
	var secondary: UIColor { get }
	var tertiary: UIColor { get }
	var link: UIColor { get }
	var separator: UIColor { get }
}
