// Mark: - Equatable

public func == <T: Equatable>(lhs: Array<T>?, rhs: Array<T>?) -> Bool {
    switch (lhs, rhs) {
    case let (.Some(lhs), .Some(rhs)):
        return lhs == rhs
    case (.None, .None):
        return true
    default:
        return false
    }
}
