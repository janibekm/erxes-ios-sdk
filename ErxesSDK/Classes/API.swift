//  This file was automatically generated and should not be edited.

import Apollo

public final class ConnectMutation: GraphQLMutation {
    public static let operationString =
    "mutation Connect($brandCode: String!, $email: String, $phone: String, $isUser: Boolean!) {\n  messengerConnect(brandCode: $brandCode, email: $email, phone: $phone, isUser: $isUser) {\n    __typename\n    integrationId\n    messengerData\n    uiOptions\n    customerId\n  }\n}"
    
    public var brandCode: String
    public var email: String?
    public var phone: String?
    public var isUser: Bool
    
    public init(brandCode: String, email: String? = nil, phone: String? = nil, isUser: Bool) {
        self.brandCode = brandCode
        self.email = email
        self.phone = phone
        self.isUser = isUser
    }
    
    public var variables: GraphQLMap? {
        return ["brandCode": brandCode, "email": email, "phone": phone, "isUser": isUser]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("messengerConnect", arguments: ["brandCode": GraphQLVariable("brandCode"), "email": GraphQLVariable("email"), "phone": GraphQLVariable("phone"), "isUser": GraphQLVariable("isUser")], type: .object(MessengerConnect.selections)),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(messengerConnect: MessengerConnect? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "messengerConnect": messengerConnect.flatMap { $0.snapshot }])
        }
        
        public var messengerConnect: MessengerConnect? {
            get {
                return (snapshot["messengerConnect"] as? Snapshot).flatMap { MessengerConnect(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "messengerConnect")
            }
        }
        
        public struct MessengerConnect: GraphQLSelectionSet {
            public static let possibleTypes = ["MessengerConnectResponse"]
            
            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("integrationId", type: .scalar(String.self)),
                GraphQLField("messengerData", type: .scalar(JSON.self)),
                GraphQLField("uiOptions", type: .scalar(JSON.self)),
                GraphQLField("customerId", type: .scalar(String.self)),
                ]
            
            public var snapshot: Snapshot
            
            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }
            
            public init(integrationId: String? = nil, messengerData: JSON? = nil, uiOptions: JSON? = nil, customerId: String? = nil) {
                self.init(snapshot: ["__typename": "MessengerConnectResponse", "integrationId": integrationId, "messengerData": messengerData, "uiOptions": uiOptions, "customerId": customerId])
            }
            
            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var integrationId: String? {
                get {
                    return snapshot["integrationId"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "integrationId")
                }
            }
            
            public var messengerData: JSON? {
                get {
                    return snapshot["messengerData"] as? JSON
                }
                set {
                    snapshot.updateValue(newValue, forKey: "messengerData")
                }
            }
            
            public var uiOptions: JSON? {
                get {
                    return snapshot["uiOptions"] as? JSON
                }
                set {
                    snapshot.updateValue(newValue, forKey: "uiOptions")
                }
            }
            
            public var customerId: String? {
                get {
                    return snapshot["customerId"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "customerId")
                }
            }
        }
    }
}

public final class ReadConversationMessagesMutation: GraphQLMutation {
    public static let operationString =
    "mutation ReadConversationMessages($conversationId: String!) {\n  readConversationMessages(conversationId: $conversationId)\n}"
    
    public var conversationId: String
    
    public init(conversationId: String) {
        self.conversationId = conversationId
    }
    
    public var variables: GraphQLMap? {
        return ["conversationId": conversationId]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("readConversationMessages", arguments: ["conversationId": GraphQLVariable("conversationId")], type: .scalar(String.self)),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(readConversationMessages: String? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "readConversationMessages": readConversationMessages])
        }
        
        public var readConversationMessages: String? {
            get {
                return snapshot["readConversationMessages"] as? String
            }
            set {
                snapshot.updateValue(newValue, forKey: "readConversationMessages")
            }
        }
    }
}

public final class InsertMessageMutation: GraphQLMutation {
    public static let operationString =
    "mutation insertMessage($integrationId: String!, $customerId: String!, $message: String, $conversationId: String, $attachments: [JSON]) {\n  insertMessage(integrationId: $integrationId, customerId: $customerId, message: $message, conversationId: $conversationId, attachments: $attachments) {\n    __typename\n    _id\n    conversationId\n  }\n}"
    
    public var integrationId: String
    public var customerId: String
    public var message: String?
    public var conversationId: String?
    public var attachments: [JSON?]?
    
    public init(integrationId: String, customerId: String, message: String? = nil, conversationId: String? = nil, attachments: [JSON?]? = nil) {
        self.integrationId = integrationId
        self.customerId = customerId
        self.message = message
        self.conversationId = conversationId
        self.attachments = attachments
    }
    
    public var variables: GraphQLMap? {
        return ["integrationId": integrationId, "customerId": customerId, "message": message, "conversationId": conversationId, "attachments": attachments]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("insertMessage", arguments: ["integrationId": GraphQLVariable("integrationId"), "customerId": GraphQLVariable("customerId"), "message": GraphQLVariable("message"), "conversationId": GraphQLVariable("conversationId"), "attachments": GraphQLVariable("attachments")], type: .object(InsertMessage.selections)),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(insertMessage: InsertMessage? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "insertMessage": insertMessage.flatMap { $0.snapshot }])
        }
        
        public var insertMessage: InsertMessage? {
            get {
                return (snapshot["insertMessage"] as? Snapshot).flatMap { InsertMessage(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "insertMessage")
            }
        }
        
        public struct InsertMessage: GraphQLSelectionSet {
            public static let possibleTypes = ["ConversationMessage"]
            
            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .nonNull(.scalar(String.self))),
                GraphQLField("conversationId", type: .nonNull(.scalar(String.self))),
                ]
            
            public var snapshot: Snapshot
            
            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }
            
            public init(id: String, conversationId: String) {
                self.init(snapshot: ["__typename": "ConversationMessage", "_id": id, "conversationId": conversationId])
            }
            
            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var id: String {
                get {
                    return snapshot["_id"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_id")
                }
            }
            
            public var conversationId: String {
                get {
                    return snapshot["conversationId"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "conversationId")
                }
            }
        }
    }
}

public final class TotalUnreadCountQuery: GraphQLQuery {
    public static let operationString =
    "query totalUnreadCount($integrationId: String!, $customerId: String!) {\n  totalUnreadCount(integrationId: $integrationId, customerId: $customerId)\n}"
    
    public var integrationId: String
    public var customerId: String
    
    public init(integrationId: String, customerId: String) {
        self.integrationId = integrationId
        self.customerId = customerId
    }
    
    public var variables: GraphQLMap? {
        return ["integrationId": integrationId, "customerId": customerId]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("totalUnreadCount", arguments: ["integrationId": GraphQLVariable("integrationId"), "customerId": GraphQLVariable("customerId")], type: .scalar(Int.self)),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(totalUnreadCount: Int? = nil) {
            self.init(snapshot: ["__typename": "Query", "totalUnreadCount": totalUnreadCount])
        }
        
        public var totalUnreadCount: Int? {
            get {
                return snapshot["totalUnreadCount"] as? Int
            }
            set {
                snapshot.updateValue(newValue, forKey: "totalUnreadCount")
            }
        }
    }
}

public final class UnreadCountQuery: GraphQLQuery {
    public static let operationString =
    "query UnreadCount($conversationId: String!) {\n  unreadCount(conversationId: $conversationId)\n}"
    
    public var conversationId: String
    
    public init(conversationId: String) {
        self.conversationId = conversationId
    }
    
    public var variables: GraphQLMap? {
        return ["conversationId": conversationId]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("unreadCount", arguments: ["conversationId": GraphQLVariable("conversationId")], type: .scalar(Int.self)),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(unreadCount: Int? = nil) {
            self.init(snapshot: ["__typename": "Query", "unreadCount": unreadCount])
        }
        
        public var unreadCount: Int? {
            get {
                return snapshot["unreadCount"] as? Int
            }
            set {
                snapshot.updateValue(newValue, forKey: "unreadCount")
            }
        }
    }
}

public final class MessagesQuery: GraphQLQuery {
    public static let operationString =
    "query Messages($conversationId: String!) {\n  messages(conversationId: $conversationId) {\n    __typename\n    _id\n    user {\n      __typename\n      details {\n        __typename\n        avatar\n        fullName\n      }\n    }\n    customerId\n    content\n    createdAt\n    attachments\n  }\n}"
    
    public var conversationId: String
    
    public init(conversationId: String) {
        self.conversationId = conversationId
    }
    
    public var variables: GraphQLMap? {
        return ["conversationId": conversationId]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("messages", arguments: ["conversationId": GraphQLVariable("conversationId")], type: .list(.object(Message.selections))),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(messages: [Message?]? = nil) {
            self.init(snapshot: ["__typename": "Query", "messages": messages.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }
        
        public var messages: [Message?]? {
            get {
                return (snapshot["messages"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Message(snapshot: $0) } } }
            }
            set {
                snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "messages")
            }
        }
        
        public struct Message: GraphQLSelectionSet {
            public static let possibleTypes = ["ConversationMessage"]
            
            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .nonNull(.scalar(String.self))),
                GraphQLField("user", type: .object(User.selections)),
                GraphQLField("customerId", type: .scalar(String.self)),
                GraphQLField("content", type: .scalar(String.self)),
                GraphQLField("createdAt", type: .scalar(Int.self)),
                GraphQLField("attachments", type: .list(.scalar(JSON.self))),
                ]
            
            public var snapshot: Snapshot
            
            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }
            
            public init(id: String, user: User? = nil, customerId: String? = nil, content: String? = nil, createdAt: Int? = nil, attachments: [JSON?]? = nil) {
                self.init(snapshot: ["__typename": "ConversationMessage", "_id": id, "user": user.flatMap { $0.snapshot }, "customerId": customerId, "content": content, "createdAt": createdAt, "attachments": attachments])
            }
            
            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var id: String {
                get {
                    return snapshot["_id"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_id")
                }
            }
            
            public var user: User? {
                get {
                    return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "user")
                }
            }
            
            public var customerId: String? {
                get {
                    return snapshot["customerId"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "customerId")
                }
            }
            
            public var content: String? {
                get {
                    return snapshot["content"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "content")
                }
            }
            
            public var createdAt: Int? {
                get {
                    return snapshot["createdAt"] as? Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }
            
            public var attachments: [JSON?]? {
                get {
                    return snapshot["attachments"] as? [JSON?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "attachments")
                }
            }
            
            public struct User: GraphQLSelectionSet {
                public static let possibleTypes = ["User"]
                
                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("details", type: .object(Detail.selections)),
                    ]
                
                public var snapshot: Snapshot
                
                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }
                
                public init(details: Detail? = nil) {
                    self.init(snapshot: ["__typename": "User", "details": details.flatMap { $0.snapshot }])
                }
                
                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var details: Detail? {
                    get {
                        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "details")
                    }
                }
                
                public struct Detail: GraphQLSelectionSet {
                    public static let possibleTypes = ["UserDetails"]
                    
                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("avatar", type: .scalar(String.self)),
                        GraphQLField("fullName", type: .scalar(String.self)),
                        ]
                    
                    public var snapshot: Snapshot
                    
                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }
                    
                    public init(avatar: String? = nil, fullName: String? = nil) {
                        self.init(snapshot: ["__typename": "UserDetails", "avatar": avatar, "fullName": fullName])
                    }
                    
                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }
                    
                    public var avatar: String? {
                        get {
                            return snapshot["avatar"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "avatar")
                        }
                    }
                    
                    public var fullName: String? {
                        get {
                            return snapshot["fullName"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "fullName")
                        }
                    }
                }
            }
        }
    }
}

public final class ConversationsQuery: GraphQLQuery {
    public static let operationString =
    "query Conversations($integrationId: String!, $customerId: String!) {\n  conversations(integrationId: $integrationId, customerId: $customerId) {\n    __typename\n    _id\n    content\n    createdAt\n    messages {\n      __typename\n      customerId\n      createdAt\n    }\n    status\n    readUserIds\n    participatedUsers {\n      __typename\n      _id\n      details {\n        __typename\n        fullName\n        avatar\n      }\n    }\n  }\n}"
    
    public var integrationId: String
    public var customerId: String
    
    public init(integrationId: String, customerId: String) {
        self.integrationId = integrationId
        self.customerId = customerId
    }
    
    public var variables: GraphQLMap? {
        return ["integrationId": integrationId, "customerId": customerId]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("conversations", arguments: ["integrationId": GraphQLVariable("integrationId"), "customerId": GraphQLVariable("customerId")], type: .list(.object(Conversation.selections))),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(conversations: [Conversation?]? = nil) {
            self.init(snapshot: ["__typename": "Query", "conversations": conversations.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
        }
        
        public var conversations: [Conversation?]? {
            get {
                return (snapshot["conversations"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Conversation(snapshot: $0) } } }
            }
            set {
                snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "conversations")
            }
        }
        
        public struct Conversation: GraphQLSelectionSet {
            public static let possibleTypes = ["Conversation"]
            
            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .nonNull(.scalar(String.self))),
                GraphQLField("content", type: .scalar(String.self)),
                GraphQLField("createdAt", type: .scalar(Int.self)),
                GraphQLField("messages", type: .list(.object(Message.selections))),
                GraphQLField("status", type: .nonNull(.scalar(String.self))),
                GraphQLField("readUserIds", type: .list(.scalar(String.self))),
                GraphQLField("participatedUsers", type: .list(.object(ParticipatedUser.selections))),
                ]
            
            public var snapshot: Snapshot
            
            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }
            
            public init(id: String, content: String? = nil, createdAt: Int? = nil, messages: [Message?]? = nil, status: String, readUserIds: [String?]? = nil, participatedUsers: [ParticipatedUser?]? = nil) {
                self.init(snapshot: ["__typename": "Conversation", "_id": id, "content": content, "createdAt": createdAt, "messages": messages.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "status": status, "readUserIds": readUserIds, "participatedUsers": participatedUsers.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
            }
            
            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var id: String {
                get {
                    return snapshot["_id"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_id")
                }
            }
            
            public var content: String? {
                get {
                    return snapshot["content"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "content")
                }
            }
            
            public var createdAt: Int? {
                get {
                    return snapshot["createdAt"] as? Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }
            
            public var messages: [Message?]? {
                get {
                    return (snapshot["messages"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Message(snapshot: $0) } } }
                }
                set {
                    snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "messages")
                }
            }
            
            public var status: String {
                get {
                    return snapshot["status"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "status")
                }
            }
            
            public var readUserIds: [String?]? {
                get {
                    return snapshot["readUserIds"] as? [String?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "readUserIds")
                }
            }
            
            public var participatedUsers: [ParticipatedUser?]? {
                get {
                    return (snapshot["participatedUsers"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { ParticipatedUser(snapshot: $0) } } }
                }
                set {
                    snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "participatedUsers")
                }
            }
            
            public struct Message: GraphQLSelectionSet {
                public static let possibleTypes = ["ConversationMessage"]
                
                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("customerId", type: .scalar(String.self)),
                    GraphQLField("createdAt", type: .scalar(Int.self)),
                    ]
                
                public var snapshot: Snapshot
                
                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }
                
                public init(customerId: String? = nil, createdAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ConversationMessage", "customerId": customerId, "createdAt": createdAt])
                }
                
                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var customerId: String? {
                    get {
                        return snapshot["customerId"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "customerId")
                    }
                }
                
                public var createdAt: Int? {
                    get {
                        return snapshot["createdAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }
            }
            
            public struct ParticipatedUser: GraphQLSelectionSet {
                public static let possibleTypes = ["User"]
                
                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
                    GraphQLField("details", type: .object(Detail.selections)),
                    ]
                
                public var snapshot: Snapshot
                
                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }
                
                public init(id: String, details: Detail? = nil) {
                    self.init(snapshot: ["__typename": "User", "_id": id, "details": details.flatMap { $0.snapshot }])
                }
                
                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: String {
                    get {
                        return snapshot["_id"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_id")
                    }
                }
                
                public var details: Detail? {
                    get {
                        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "details")
                    }
                }
                
                public struct Detail: GraphQLSelectionSet {
                    public static let possibleTypes = ["UserDetails"]
                    
                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("fullName", type: .scalar(String.self)),
                        GraphQLField("avatar", type: .scalar(String.self)),
                        ]
                    
                    public var snapshot: Snapshot
                    
                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }
                    
                    public init(fullName: String? = nil, avatar: String? = nil) {
                        self.init(snapshot: ["__typename": "UserDetails", "fullName": fullName, "avatar": avatar])
                    }
                    
                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }
                    
                    public var fullName: String? {
                        get {
                            return snapshot["fullName"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "fullName")
                        }
                    }
                    
                    public var avatar: String? {
                        get {
                            return snapshot["avatar"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "avatar")
                        }
                    }
                }
            }
        }
    }
}

public final class ConversationDetailQuery: GraphQLQuery {
    public static let operationString =
    "query ConversationDetail($id: String, $integrationId: String!) {\n  conversationDetail(_id: $id, integrationId: $integrationId) {\n    __typename\n    isOnline\n    supporters {\n      __typename\n      _id\n      details {\n        __typename\n        avatar\n        fullName\n      }\n    }\n  }\n}"
    
    public var id: String?
    public var integrationId: String
    
    public init(id: String? = nil, integrationId: String) {
        self.id = id
        self.integrationId = integrationId
    }
    
    public var variables: GraphQLMap? {
        return ["id": id, "integrationId": integrationId]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("conversationDetail", arguments: ["_id": GraphQLVariable("id"), "integrationId": GraphQLVariable("integrationId")], type: .object(ConversationDetail.selections)),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(conversationDetail: ConversationDetail? = nil) {
            self.init(snapshot: ["__typename": "Query", "conversationDetail": conversationDetail.flatMap { $0.snapshot }])
        }
        
        public var conversationDetail: ConversationDetail? {
            get {
                return (snapshot["conversationDetail"] as? Snapshot).flatMap { ConversationDetail(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "conversationDetail")
            }
        }
        
        public struct ConversationDetail: GraphQLSelectionSet {
            public static let possibleTypes = ["ConversationDetailResponse"]
            
            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("isOnline", type: .scalar(Bool.self)),
                GraphQLField("supporters", type: .list(.object(Supporter.selections))),
                ]
            
            public var snapshot: Snapshot
            
            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }
            
            public init(isOnline: Bool? = nil, supporters: [Supporter?]? = nil) {
                self.init(snapshot: ["__typename": "ConversationDetailResponse", "isOnline": isOnline, "supporters": supporters.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
            }
            
            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var isOnline: Bool? {
                get {
                    return snapshot["isOnline"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "isOnline")
                }
            }
            
            public var supporters: [Supporter?]? {
                get {
                    return (snapshot["supporters"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Supporter(snapshot: $0) } } }
                }
                set {
                    snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "supporters")
                }
            }
            
            public struct Supporter: GraphQLSelectionSet {
                public static let possibleTypes = ["User"]
                
                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_id", type: .nonNull(.scalar(String.self))),
                    GraphQLField("details", type: .object(Detail.selections)),
                    ]
                
                public var snapshot: Snapshot
                
                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }
                
                public init(id: String, details: Detail? = nil) {
                    self.init(snapshot: ["__typename": "User", "_id": id, "details": details.flatMap { $0.snapshot }])
                }
                
                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }
                
                public var id: String {
                    get {
                        return snapshot["_id"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_id")
                    }
                }
                
                public var details: Detail? {
                    get {
                        return (snapshot["details"] as? Snapshot).flatMap { Detail(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "details")
                    }
                }
                
                public struct Detail: GraphQLSelectionSet {
                    public static let possibleTypes = ["UserDetails"]
                    
                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("avatar", type: .scalar(String.self)),
                        GraphQLField("fullName", type: .scalar(String.self)),
                        ]
                    
                    public var snapshot: Snapshot
                    
                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }
                    
                    public init(avatar: String? = nil, fullName: String? = nil) {
                        self.init(snapshot: ["__typename": "UserDetails", "avatar": avatar, "fullName": fullName])
                    }
                    
                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }
                    
                    public var avatar: String? {
                        get {
                            return snapshot["avatar"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "avatar")
                        }
                    }
                    
                    public var fullName: String? {
                        get {
                            return snapshot["fullName"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "fullName")
                        }
                    }
                }
            }
        }
    }
}

public final class GetConfigQuery: GraphQLQuery {
    public static let operationString =
    "query GetConfig($brandCode: String!) {\n  getMessengerIntegration(brandCode: $brandCode) {\n    __typename\n    languageCode\n    uiOptions\n    messengerData\n  }\n}"
    
    public var brandCode: String
    
    public init(brandCode: String) {
        self.brandCode = brandCode
    }
    
    public var variables: GraphQLMap? {
        return ["brandCode": brandCode]
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("getMessengerIntegration", arguments: ["brandCode": GraphQLVariable("brandCode")], type: .object(GetMessengerIntegration.selections)),
            ]
        
        public var snapshot: Snapshot
        
        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }
        
        public init(getMessengerIntegration: GetMessengerIntegration? = nil) {
            self.init(snapshot: ["__typename": "Query", "getMessengerIntegration": getMessengerIntegration.flatMap { $0.snapshot }])
        }
        
        public var getMessengerIntegration: GetMessengerIntegration? {
            get {
                return (snapshot["getMessengerIntegration"] as? Snapshot).flatMap { GetMessengerIntegration(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "getMessengerIntegration")
            }
        }
        
        public struct GetMessengerIntegration: GraphQLSelectionSet {
            public static let possibleTypes = ["Integration"]
            
            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("languageCode", type: .scalar(String.self)),
                GraphQLField("uiOptions", type: .scalar(JSON.self)),
                GraphQLField("messengerData", type: .scalar(JSON.self)),
                ]
            
            public var snapshot: Snapshot
            
            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }
            
            public init(languageCode: String? = nil, uiOptions: JSON? = nil, messengerData: JSON? = nil) {
                self.init(snapshot: ["__typename": "Integration", "languageCode": languageCode, "uiOptions": uiOptions, "messengerData": messengerData])
            }
            
            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }
            
            public var languageCode: String? {
                get {
                    return snapshot["languageCode"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "languageCode")
                }
            }
            
            public var uiOptions: JSON? {
                get {
                    return snapshot["uiOptions"] as? JSON
                }
                set {
                    snapshot.updateValue(newValue, forKey: "uiOptions")
                }
            }
            
            public var messengerData: JSON? {
                get {
                    return snapshot["messengerData"] as? JSON
                }
                set {
                    snapshot.updateValue(newValue, forKey: "messengerData")
                }
            }
        }
    }
}
