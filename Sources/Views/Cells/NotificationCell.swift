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
        label.textAlignment = .center
        return label
    }()
    
    open func setupConstraints() {
        self.addSubview(notificationLabel)
        notificationLabel.fillSuperview()
    }
    
    open func configure(with message: MessageType, at indexPath: IndexPath, and messagesCollectionView: MessagesCollectionView) {
        self.setupConstraints()
        switch message.kind {
        case .custom(let text):
            self.contentView.backgroundColor = UIColor(red: 0, green: 0.62, blue: 0.59, alpha: 1)
            //swiftlint:disable force_cast
            self.notificationLabel.attributedText = (text as! NSAttributedString)
            //swiftlint:enable force_cast
            self.notificationLabel.textColor = .white
        default:
            break
        }
    }
    
}
