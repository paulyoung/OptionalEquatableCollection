import OptionalEquatableCollection
import Nimble
import Quick

class SetSpec: QuickSpec {
    override func spec() {
        describe("equatable") {
            describe("optional sets") {
                context("empty") {
                    it("should be considered equal") {
                        let lhs: Set<Int>? = []
                        let rhs: Set<Int>? = []
                        expect(lhs == rhs).to(beTrue())
                    }
                }
                
                context("same elements") {
                    it("should be considered equal") {
                        let lhs: Set<Int>? = [1]
                        let rhs: Set<Int>? = [1]
                        expect(lhs == rhs).to(beTrue())
                    }
                }
                
                context("different elements") {
                    it("should not be considered equal") {
                        let lhs: Set<Int>? = [1]
                        let rhs: Set<Int>? = [2]
                        expect(lhs == rhs).toNot(beTrue())
                    }
                }
            }
        }
    }
}
