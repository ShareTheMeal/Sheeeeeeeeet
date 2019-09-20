//
//  DestructiveButtonTests.swift
//  Sheeeeeeeeet
//
//  Created by Daniel Saidi on 2019-09-17.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import Quick
import Nimble
@testable import Sheeeeeeeeet

class DestructiveButtonTests: QuickSpec {
    
    override func spec() {
        
        describe("creating cancel button") {
            
            it("sets up provided properties") {
                let item = DestructiveButton(title: "title")
                
                expect(item.title).to(equal("title"))
                expect(item.subtitle).to(beNil())
                expect(item.value as? MenuButton.ButtonType).to(equal(.ok))
                expect(item.image).to(beNil())
                expect(item.tapBehavior).to(equal(.dismiss))
            }
        }
        
        describe("action sheet conversion") {
            
            it("can be converted to an action sheet item") {
                let source = DestructiveButton(title: "title")
                let item = source.toActionSheetItem() as? ActionSheetDangerButton
                
                expect(item?.title).to(equal("title"))
                expect(item?.subtitle).to(beNil())
                expect(item?.value as? MenuButton.ButtonType).to(equal(.ok))
                expect(item?.image).to(beNil())
                expect(item?.tapBehavior).to(equal(.dismiss))
            }
        }
    }
}