// Mark: - Equatable

public func == <T: Equatable, U: Equatable>(lhs: Dictionary<T, U>?, rhs: Dictionary<T, U>?) -> Bool {
    switch (lhs, rhs) {
    case let (.Some(lhs), .Some(rhs)):
        return lhs == rhs
    case (.None, .None):
        return true
    default:
        return false
    }
}
