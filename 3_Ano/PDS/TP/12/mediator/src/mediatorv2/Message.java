public class Message {
    
        private String message;
        private UserType type;
    
        public Message(String message, UserType type) {
            this.message = message;
            this.type = type;
        }
    
        public String getMessage() {
            return message;
        }

        public UserType getType() {
            return type;
        }
}
