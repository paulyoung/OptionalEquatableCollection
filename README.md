# OptionalEquatableCollection [![Build Status](https://travis-ci.org/paulyoung/OptionalEquatableCollection.svg?branch=master)](https://travis-ci.org/paulyoung/OptionalEquatableCollection)

Compare optional collections of equatable types for value equality.

## Array
```swift
let lhs: [Int]? = [1]
let rhs: [Int]? = [1]
lhs == rhs // true
```

## Dictionary
```swift
let lhs: [String: Int]? = ["one": 1]
let rhs: [String: Int]? = ["one": 1]
lhs == rhs // true
```

## Set
```swift
let lhs: Set<Int>? = [1, 2, 3]
let rhs: Set<Int>? = [1, 2, 3]
lhs == rhs // true
```
