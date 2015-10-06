@warn_unused_result
public func == <Element : Hashable>(lhs: Set<Element>?, rhs: Set<Element>?) -> Bool {
    switch (lhs, rhs) {
    case let (.Some(lhs), .Some(rhs)):
        return lhs == rhs
    case (.None, .None):
        return true
    default:
        return false
    }
}
