package airbnb.domain;

import org.springframework.data.annotation.Id;

public class User {
    @Id
    private String userId;

    public User(String userId) {
        this.userId = userId;
    }

    public String getUserId() {
        return userId;
    }
}
