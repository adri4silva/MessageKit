//
//  NotificationMessagesFlowLayout.swift
//  MessageKit
//
//  Created by adrian on 17/05/2018.
//  Copyright © 2018 MessageKit. All rights reserved.
//

import UIKit

open class NotificationMessagesFlowLayout: MessagesCollectionViewFlowLayout {
    lazy open var customMessageSizeCalculator = NotificationMessageSizeCalculator(layout: self)
    
    open override func cellSizeCalculatorForItem(at indexPath: IndexPath) -> CellSizeCalculator {
        let message = messagesDataSource.messageForItem(at: indexPath, in: messagesCollectionView)
        if case .custom = message.kind {
            return customMessageSizeCalculator
        }
        return super.cellSizeCalculatorForItem(at: indexPath)
    }
}
