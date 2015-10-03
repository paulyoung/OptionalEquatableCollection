public func == <T: CollectionType where T.Generator.Element: Equatable>(lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (.Some(lhs), .Some(rhs)):
        return lhs == rhs
    case (.None, .None):
        return true
    default:
        return false
    }
}

public func == <T: DictionaryLiteralConvertible where T.Key: Equatable, T.Value: Equatable>(lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (.Some(lhs), .Some(rhs)):
        return lhs == rhs
    case (.None, .None):
        return true
    default:
        return false
    }
}
