//
//  NotificationCell.swift
//  MessageKit
//
//  Created by adrian on 16/05/2018.
//  Copyright © 2018 MessageKit. All rights reserved.
//

import Foundation

/// Customize this collection view cell with data passed in from message, which is of type .custom
open class NotificationCell: UICollectionViewCell {
    
    open var notificationLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    open func configure(with message: MessageType, at indexPath: IndexPath, and messagesCollectionView: MessagesCollectionView) {
        self.contentView.backgroundColor = UIColor.red
        self.notificationLabel.text = "Missed call from \(message.sender.displayName)"
    }
    
}
