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
    
    open func setupConstraints() {
        self.addSubview(notificationLabel)
        notificationLabel.centerInSuperview()
        notificationLabel.constraint(equalTo: CGSize(width: 150, height: 22))
    }
    
    open func configure(with message: MessageType, at indexPath: IndexPath, and messagesCollectionView: MessagesCollectionView) {
        self.setupConstraints()
        switch message.kind {
        case .custom(let text):
            self.contentView.backgroundColor = UIColor.outgoingGreen
            self.notificationLabel.attributedText = (text as! NSAttributedString)
            self.notificationLabel.textColor = .white
        default:
            break
        }
    }
    
}
