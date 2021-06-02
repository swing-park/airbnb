package airbnb.domain;

import org.springframework.data.annotation.Id;

public class User {

    @Id
    private String id;
    private String profileImageUrl;

    public User(String id, String profileImageUrl) {
        this.id = id;
        this.profileImageUrl = profileImageUrl;
    }

    public String getId() {
        return id;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }
}
