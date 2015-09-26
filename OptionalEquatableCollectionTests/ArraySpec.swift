import OptionalEquatableCollection
import Nimble
import Quick

class ArraySpec: QuickSpec {
    override func spec() {
        describe("equatable") {
            describe("optional arrays") {
                context("empty") {
                    it("should be considered equal") {
                        let lhs: [Int]? = []
                        let rhs: [Int]? = []
                        expect(lhs == rhs).to(beTrue())
                    }
                }
                
                context("same elements") {
                    it("should be considered equal") {
                        let lhs: [Int]? = [1]
                        let rhs: [Int]? = [1]
                        expect(lhs == rhs).to(beTrue())
                    }
                }
                
                context("same elements, same order") {
                    it("should be considered equal") {
                        let lhs: [Int]? = [1, 2]
                        let rhs: [Int]? = [1, 2]
                        expect(lhs == rhs).to(beTrue())
                    }
                }
                
                context("same elements, different order") {
                    it("should not be considered equal") {
                        let lhs: [Int]? = [1, 2]
                        let rhs: [Int]? = [2, 1]
                        expect(lhs == rhs).toNot(beTrue())
                    }
                }
            }
        }
    }
}
