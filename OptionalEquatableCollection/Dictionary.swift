@warn_unused_result
public func == <Key: Equatable, Value: Equatable>(lhs: [Key: Value]?, rhs: [Key: Value]?) -> Bool {
    switch (lhs, rhs) {
    case let (.Some(lhs), .Some(rhs)):
        return lhs == rhs
    case (.None, .None):
        return true
    default:
        return false
    }
}
