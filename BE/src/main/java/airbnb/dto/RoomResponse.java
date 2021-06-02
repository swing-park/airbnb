package airbnb.dto;

import airbnb.domain.*;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RoomResponse {

    private final Long roomId;
    private final int price;
    private final String title;
    private final String description;
    private final ImageResponse images;
    private final int grade;
    private final int reviewCount;
    private final Tax tax;
    private final Location location;
    private final User host;

    @JsonProperty(value = "detail")
    private final RoomDetail roomDetail;

    private RoomResponse(Builder builder) {
        this.roomId = builder.roomId;
        this.price = builder.price;
        this.title = builder.title;
        this.description = builder.description;
        this.images = builder.images;
        this.grade = builder.grade;
        this.reviewCount = builder.reviewCount;
        this.tax = builder.tax;
        this.roomDetail = builder.roomDetail;
        this.location = builder.location;
        this.host = builder.host;
    }

    public static class Builder {
        private Long roomId;
        private int price;
        private String title;
        private String description;
        private ImageResponse images;
        private int grade;
        private int reviewCount;
        private Tax tax;
        private RoomDetail roomDetail;
        private Location location;
        private User host;

        public Builder roomId(Long roomId) {
            this.roomId = roomId;
            return this;
        }

        public Builder location(Location location){
            this.location = location;
            return this;
        }

        public Builder price(int price) {
            this.price = price;
            return this;
        }

        public Builder title(String title) {
            this.title = title;
            return this;
        }

        public Builder description(String description) {
            this.description = description;
            return this;
        }

        public Builder images(ImageResponse images) {
            this.images = images;
            return this;
        }

        public Builder grade(int grade) {
            this.grade = grade;
            return this;
        }

        public Builder reviewCount(int reviewCount) {
            this.reviewCount = reviewCount;
            return this;
        }

        public Builder tax(Tax tax) {
            this.tax = tax;
            return this;
        }

        public Builder roomDetail(RoomDetail roomDetail) {
            this.roomDetail = roomDetail;
            return this;
        }

        public Builder host(User host){
            this.host = host;
            return this;
        }


        public RoomResponse build() {
            return new RoomResponse(this);
        }
    }

    public Long getRoomId() {
        return roomId;
    }

    public int getPrice() {
        return price;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public ImageResponse getImages() {
        return images;
    }

    public int getGrade() {
        return grade;
    }

    public int getReviewCount() {
        return reviewCount;
    }

    public Tax getTax() {
        return tax;
    }

    public RoomDetail getRoomDetail() {
        return roomDetail;
    }

    public Location getLocation() {
        return location;
    }

    public User getHost() {
        return host;
    }

    public static RoomResponse of(Room room, User host) {
        return new Builder().roomId(room.getId()).price(room.getPrice()).title(room.getTitle())
                .description(room.getDescription()).tax(room.getTax()).location(room.getLocation())
                .roomDetail(room.getRoomDetail()).images(ImageResponse.of(room.getImages())).host(host).build();
    }
}
