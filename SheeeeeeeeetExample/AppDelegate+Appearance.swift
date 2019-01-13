//
//  AppDelegate+Appearance.swift
//  SheeeeeeeeetExample
//
//  Created by Daniel Saidi on 2018-10-08.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

/*
 
 This extension isolates how the example app applies colors,
 fonts etc to the example action sheets.
 
 */

import UIKit
import Sheeeeeeeeet

extension AppDelegate {
    
    func applyAppearance() {
        
        let appearance = ActionSheetAppearance.standard
        
        applyViewAppearances()
        applyColors()
        applyFonts()
        applySeparatorInsets()
        applyPopoverWidth()
        
        appearance.sectionTitle.height = 20
        appearance.sectionMargin.height = 20
        
        appearance.selectItem.selectedIcon = UIImage(named: "ic_checkmark")
        appearance.selectItem.unselectedIcon = UIImage(named: "ic_empty")
        appearance.selectItem.selectedTintColor = .exampleBlue
        appearance.selectItem.selectedTextColor = .exampleGreen
        appearance.selectItem.selectedIconTintColor = .examplePurple
        
        appearance.singleSelectItem.selectedTintColor = .exampleGreen
        appearance.singleSelectItem.selectedTextColor = .examplePurple
        appearance.singleSelectItem.selectedIconTintColor = .exampleBlue
        
        appearance.multiSelectItem.selectedTintColor = .examplePurple
        appearance.multiSelectItem.selectedTextColor = .exampleBlue
        appearance.multiSelectItem.selectedIconTintColor = .exampleGreen
        
        appearance.multiSelectToggleItem.selectAllTextColor = .lightGray
        appearance.multiSelectToggleItem.deselectAllTextColor = .exampleRed
        
        appearance.linkItem.linkIcon = UIImage(named: "ic_arrow_right")
        
        applyLegacyAppearance(appearance)
    }
}


private extension AppDelegate {
    
    func applyViewAppearances() {
//        ActionSheetBackgroundView.appearance().backgroundColor = .purple
        ActionSheetHeaderView.appearance().cornerRadius = 10
        ActionSheetTableView.appearance().cornerRadius = 10
//        ActionSheetTableView.appearance().separatorLineColor = .purple
//        ActionSheetItemTableView.appearance().cornerRadius = 20
//        ActionSheetTableView.appearance(whenContainedInInstancesOf: [MultiSelectActionSheet.self]).cornerRadius = 20
    }
    
    func applyColors() {
        ActionSheetItemCell.appearance().titleColor = .darkText
        ActionSheetItemCell.appearance().subtitleColor = .exampleBlue
        ActionSheetItemCell.appearance().tintColor = .darkText
//        ActionSheetItemCell.appearance().separatorColor = .red
//        ActionSheetItemCell.appearance().backgroundColor = red
//        ActionSheetItemCell.appearance(whenContainedInInstancesOf: [ActionSheetItemTableView.self]).backgroundColor = .purple
        ActionSheetOkButtonCell.appearance().titleColor = .darkGray
        ActionSheetCancelButtonCell.appearance().titleColor = .lightGray
        ActionSheetDangerButtonCell.appearance().titleColor = .examplePink
    }
    
    func applyFonts() {
        ActionSheetItemCell.appearance().titleFont = .robotoRegular(size: 17)
        ActionSheetItemCell.appearance().subtitleFont = .robotoRegular(size: 14)
        ActionSheetLinkItemCell.appearance().titleFont = .robotoRegular(size: 17)
        ActionSheetMultiSelectToggleItemCell.appearance().titleFont = .robotoMedium(size: 13)
        ActionSheetSectionTitleCell.appearance().titleFont = .robotoMedium(size: 13)
        ActionSheetTitleCell.appearance().titleFont = .robotoMedium(size: 15)
        ActionSheetOkButtonCell.appearance().titleFont = .robotoBlack(size: 17)
        ActionSheetDangerButtonCell.appearance().titleFont = .robotoMedium(size: 17)
        ActionSheetCancelButtonCell.appearance().titleFont = .robotoRegular(size: 17)
    }
    
    func applySeparatorInsets() {
        ActionSheetItemCell.appearance().separatorInset = .zero
        ActionSheetTitleCell.appearance().separatorInset = .hiddenSeparator
        ActionSheetSectionTitleCell.appearance().separatorInset = .hiddenSeparator
        ActionSheetSectionMarginCell.appearance().separatorInset = .hiddenSeparator
        ActionSheetMultiSelectToggleItemCell.appearance().separatorInset = .hiddenSeparator
    }
    
    func applyPopoverWidth() {
//        ActionSheet.preferredPopoverWidth = 700
    }
}


// MARK: - Legacy

private extension AppDelegate {
    
    func applyLegacyAppearance(_ appearance: ActionSheetAppearance) {
        applyLegacyBackgroundColors(to: appearance)
        applyLegacyFonts(to: appearance)
        applyLegacyPopoverWidth(to: appearance)
        applyLegacySeparatorInsets(to: appearance)
        applyLegacySubtitleFonts(to: appearance)
        applyLegacySubtitleTextColor(to: appearance)
        applyLegacyTextColors(to: appearance)
        applyLegacyTintColors(to: appearance)
    }
    
    func applyLegacyBackgroundColors(to appearance: ActionSheetAppearance) {
//        appearance.item.backgroundColor = .exampleRed
    }
    
    func applyLegacyFonts(to appearance: ActionSheetAppearance) {
//        appearance.item.font = robotoRegular(size: 170)
//        appearance.linkItem.font = robotoRegular(size: 170)
//        appearance.title.font = robotoMedium(size: 15)
//        appearance.sectionTitle.font = robotoMedium(size: 13)
//        appearance.multiSelectToggleItem.font = robotoMedium(size: 13)
//        appearance.okButton.font = robotoBlack(size: 17)
//        appearance.dangerButton.font = robotoMedium(size: 17)
//        appearance.cancelButton.font = robotoMedium(size: 17)
    }
        
    func applyLegacyPopoverWidth(to appearance: ActionSheetAppearance) {
//        appearance.popover.width = 800
    }
    
    func applyLegacySeparatorInsets(to appearance: ActionSheetAppearance) {
//        appearance.item.separatorInsets = .zero
//        appearance.title.hideSeparator()
//        appearance.sectionTitle.hideSeparator()
//        appearance.multiSelectToggleItem.hideSeparator()
    }
    
    func applyLegacySubtitleFonts(to appearance: ActionSheetAppearance) {
//        appearance.item.subtitleFont = robotoRegular(size: 170)
    }
    
    func applyLegacySubtitleTextColor(to appearance: ActionSheetAppearance) {
//        appearance.item.subtitleTextColor = .purple
    }
    
    func applyLegacyTextColors(to appearance: ActionSheetAppearance) {
//        appearance.item.textColor = .purple
//        appearance.okButton.textColor = .darkGray
//        appearance.dangerButton.textColor = .examplePink
//        appearance.cancelButton.textColor = .lightGray
    }
    
    func applyLegacyTintColors(to appearance: ActionSheetAppearance) {
//        appearance.item.tintColor = .purple
    }
}
