import OptionalEquatableCollection
import Nimble
import Quick

class DictionarySpec: QuickSpec {
    override func spec() {
        describe("equatable") {
            describe("optional dictionaries") {
                context("empty") {
                    it("should be considered equal") {
                        let lhs: [String: Int]? = [:]
                        let rhs: [String: Int]? = [:]
                        expect(lhs == rhs).to(beTrue())
                    }
                }
                
                context("same key-value pairs") {
                    it("should be considered equal") {
                        let lhs: [String: Int]? = ["one": 1]
                        let rhs: [String: Int]? = ["one": 1]
                        expect(lhs == rhs).to(beTrue())
                    }
                }
                
                context("different key-value-pairs") {
                    it("should not be considered equal") {
                        let lhs: [String: Int]? = ["one": 1]
                        let rhs: [String: Int]? = ["two": 2]
                        expect(lhs == rhs).toNot(beTrue())
                    }
                }
            }
        }
    }
}
