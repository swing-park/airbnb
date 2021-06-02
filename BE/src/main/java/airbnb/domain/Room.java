package airbnb.domain;

import jdk.nashorn.internal.objects.annotations.Property;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.annotation.Id;

import java.util.List;

public class Room {

    @Id
    private Long id;
    private int price;
    private String title;
    private String description;
    private RoomDetail roomDetail;
    private Tax tax;
    private List<Image> images;
    private Location location;

    @Value(value = "hostUser_id")
    private String hostUserId;

    private Room(Builder builder) {
        this.id = builder.id;
        this.price = builder.price;
        this.title = builder.title;
        this.description = builder.description;
        this.roomDetail = builder.roomDetail;
        this.tax = builder.tax;
        this.location = builder.location;
        this.hostUserId = builder.hostUserId;
    }

    public static class Builder {

        private final Long id;

        private int price;
        private String title;
        private String description;
        private RoomDetail roomDetail;
        private Tax tax;
        private Location location;
        private String hostUserId;

        public Builder(Long id) {
            this.id = id;
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

        public Builder roomDetail(RoomDetail roomDetail) {
            this.roomDetail = roomDetail;
            return this;
        }

        public Builder tax(Tax tax) {
            this.tax = tax;
            return this;
        }

        public Builder location(Location location) {
            this.location = location;
            return this;
        }

        public Builder hostUserId(String hostUserId) {
            this.hostUserId = hostUserId;
            return this;
        }


        public Room build() {
            return new Room(this);
        }
    }

    public Long getId() {
        return id;
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

    public RoomDetail getRoomDetail() {
        return roomDetail;
    }

    public Tax getTax() {
        return tax;
    }

    public List<Image> getImages() {
        return images;
    }

    public Location getLocation() {
        return location;
    }

    public String getHostUserId() {
        return hostUserId;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }
}
