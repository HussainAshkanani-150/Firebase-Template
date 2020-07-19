//
//  ChatVC2.swift
//  FirebaseTemplate
//
//  Created by Hussain Ashkanani on 7/18/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit
import MessageKit

struct Sender: SenderType {
    var senderId: String
    
    var displayName: String
    
    
}

struct Message: MessageType {
    
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
    
    
}

class ChatVC2: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
   
    let currentUser = Sender(senderId: "self", displayName: "iOS Academy")
    let otherUser = Sender(senderId: "other", displayName: "عبدالعزيز محمد")
    var messages = [MessageType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages.append(Message(sender: currentUser, messageId: "1", sentDate: Date().addingTimeInterval(-86400), kind: .text("السلام عليكم")))
        
         messages.append(Message(sender: currentUser, messageId: "2", sentDate: Date().addingTimeInterval(-7000), kind: .text("انا عندي منتجات و محتاج مصوّر يصورهم ، شفت شغلك ما شاء الله وايد مرتب و مهتم بالتفاصيل ! قلت لازم يصير في شغل بيننا")))
        
         messages.append(Message(sender: otherUser, messageId: "3", sentDate: Date().addingTimeInterval(-66400), kind: .text("عليكم السلام يا هلا ، بس احتاج منك تفاصيل المشروع و هل تبي تصوير منتجاتك يكون بالاستديو ؟ ولا بمكان خارجي ؟")))
        
         messages.append(Message(sender: currentUser, messageId: "4", sentDate: Date().addingTimeInterval(-56400), kind: .text("تصوير خارجي أحسن")))
        
         messages.append(Message(sender: otherUser, messageId: "5", sentDate: Date().addingTimeInterval(-46400), kind: .text("تمام ، في عرض معين تبيه ؟")))
        
         messages.append(Message(sender: currentUser, messageId: "7", sentDate: Date().addingTimeInterval(-36400), kind: .text("اي ابي عرض ال ١٠ صور ب ٣٠ دينار")))
        
        
        
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        
        
    }
    
    func currentSender() -> SenderType {
           return currentUser
       }
       
       func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
       }
       
       func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
       }


}
