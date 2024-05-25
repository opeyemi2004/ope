import Array "mo:base/Array";

actor Main {
    // A state variable to hold a list of messages
    var messages: [Text] = [];

    // A public function to add a new message
    public func addMessage(msg: Text) : async Text {
        messages := Array.append(messages, [msg]);
        return "Message added: " # msg;
    };

    // A public query function to get all messages
    public query func getMessages() : async [Text] {
        return messages;
    };
};
