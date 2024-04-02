package dto;
public class MessageDTO {
    private String email;
    private String mobileNumber;
    private String message;

    public MessageDTO() {
        // Default constructor
    }

    public MessageDTO(String email, String mobileNumber, String message) {
        this.email = email;
        this.mobileNumber = mobileNumber;
        this.message = message;
    }

    // Getters and setters
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
