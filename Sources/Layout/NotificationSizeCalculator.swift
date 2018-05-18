//
//  NotificationSizeCalculator.swift
//  MessageKit
//
//  Created by adrian on 16/05/2018.
//  Copyright © 2018 MessageKit. All rights reserved.
//

import Foundation

open class NotificationMessageSizeCalculator: MessageSizeCalculator {
    open override func messageContainerSize(for message: MessageType) -> CGSize {
        let maxWidth = 100
        return CGSize(width: maxWidth, height: 60)
    }
}
