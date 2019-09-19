//
//  MultiSelectFoodMenu.swift
//  SheeeeeeeeetDemo
//
//  Created by Daniel Saidi on 2019-09-19.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import Sheeeeeeeeet

class MultiSelectFoodMenu: FoodMenu {

    init(food: [FoodOption]) {
        let items = MultiSelectFoodMenu.items(for: food)
        super.init(items: items)
    }
}

private extension MultiSelectFoodMenu {
    
    static func items(for food: [FoodOption]) -> [MenuItem] {
        var items = [MenuItem]()
        items.append(contentsOf: itemsGroup(for: food, preselected: .fast, group: "Appetizer"))
        items.append(SectionMargin())
        items.append(contentsOf: itemsGroup(for: food, preselected: .fancy, group: "Main Dish"))
        items.append(okButton)
        items.append(cancelButton)
        return items
    }
    
    static func itemsGroup(for food: [FoodOption], preselected: FoodOption?, group: String) -> [MenuItem] {
        let food = food.filter { $0 != .none && $0 != .homeMade }
        let items = food.map { $0.toMultiSelectItem(isSelected: $0 == preselected, group: group) }
        let toggle = MultiSelectToggleItem(title: group, state: .selectAll, group: group, selectAllTitle: "Select all", deselectAllTitle: "Deselect all")
        return CollectionOfOne(toggle) + items
    }
}
