@warn_unused_result
public func == <Element: Equatable>(lhs: Array<Element>?, rhs: Array<Element>?) -> Bool {
    switch (lhs, rhs) {
    case let (.Some(lhs), .Some(rhs)):
        return lhs == rhs
    case (.None, .None):
        return true
    default:
        return false
    }
}
