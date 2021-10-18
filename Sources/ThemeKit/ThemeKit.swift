import UIKit

public protocol FontStyle {
	var name: String { get }
	func getFont(for size: CGFloat) -> UIFont
}

public extension FontStyle {
	func getFont(for size: CGFloat) -> UIFont {
		return UIFont(name: self.name, size: size) ?? .systemFont(ofSize: size)
	}
}

public protocol FontProviderProtocol {
	
	var bold: FontStyle { get }
	var semiBold: FontStyle { get }
	var regular: FontStyle { get }
	var medium: FontStyle { get }
	var light: FontStyle { get }
	
	var boldItalic: FontStyle { get }
	var semiBoldItalic: FontStyle { get }
	var italic: FontStyle { get }
	var mediumItalic: FontStyle { get }
	var lightItalic: FontStyle { get }
}

public extension FontProviderProtocol {
	var boldItalic: FontStyle { return Font(name: UIFont.italicSystemFont(ofSize: 20).fontName)}
	var semiBoldItalic: FontStyle { return Font(name: UIFont.italicSystemFont(ofSize: 20).fontName)}
	var italic: FontStyle { return Font(name: UIFont.italicSystemFont(ofSize: 20).fontName)}
	var mediumItalic: FontStyle { return Font(name: UIFont.italicSystemFont(ofSize: 20).fontName)}
	var lightItalic: FontStyle { return Font(name: UIFont.italicSystemFont(ofSize: 20).fontName)}
}


public class FontManager: FontProviderProtocol {
	
	let fontProvider: FontProviderProtocol
	
	public init(fontProvider: FontProviderProtocol) {
		self.fontProvider = fontProvider
	}
}

public extension FontManager  {
	var bold: FontStyle { fontProvider.bold }
	var semiBold: FontStyle { fontProvider.semiBold }
	var regular: FontStyle { fontProvider.regular }
	var medium: FontStyle { fontProvider.medium }
	var light: FontStyle { fontProvider.light }
	var boldItalic: FontStyle { fontProvider.boldItalic }
	var semiBoldItalic: FontStyle { fontProvider.semiBoldItalic }
	var italic: FontStyle { fontProvider.italic }
	var mediumItalic: FontStyle { fontProvider.mediumItalic }
	var lightItalic: FontStyle { fontProvider.lightItalic }
}

public struct Font: FontStyle {
	public var name: String
	public init(name: String) {
		self.name = name
	}
}
