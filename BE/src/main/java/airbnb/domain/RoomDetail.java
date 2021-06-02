package airbnb.domain;

import com.fasterxml.jackson.annotation.JsonProperty;

public class RoomDetail {
    private boolean oneRoom;
    private int bedCount;
    private int bathCount;
    private boolean hairDryer;
    private boolean airConditioner;
    private boolean wiFi;
    private boolean kitchen;
    private int maxPeople;

    public RoomDetail(Builder builder) {
        this.oneRoom = builder.oneRoom;
        this.bedCount = builder.bedCount;
        this.bathCount = builder.bathCount;
        this.hairDryer = builder.hairDryer;
        this.airConditioner = builder.airConditioner;
        this.wiFi = builder.wiFi;
        this.maxPeople = builder.maxPeople;
        this.kitchen = builder.kitchen;
    }

    public static class Builder {
        private boolean oneRoom;
        private int bedCount;
        private int bathCount;
        private boolean hairDryer;
        private boolean airConditioner;
        private boolean wiFi;
        private int maxPeople;
        private final boolean kitchen = true;


        public Builder maxPeople(int maxPeople) {
            this.maxPeople = maxPeople;
            return this;
        }

        public Builder oneRoom(boolean oneRoom) {
            this.oneRoom = oneRoom;
            return this;
        }

        public Builder bedCount(int bedCount) {
            this.bedCount = bedCount;
            return this;
        }

        public Builder bathCount(int bathCount) {
            this.bathCount = bathCount;
            return this;
        }

        public Builder hairDryer(boolean hairDryer) {
            this.hairDryer = hairDryer;
            return this;
        }

        public Builder airConditioner(boolean airConditioner) {
            this.airConditioner = airConditioner;
            return this;
        }

        public Builder wiFi(boolean wiFi) {
            this.wiFi = wiFi;
            return this;
        }

        public RoomDetail build() {
            return new RoomDetail(this);
        }
    }

    public boolean isOneRoom() {
        return oneRoom;
    }

    public int getBedCount() {
        return bedCount;
    }

    public int getBathCount() {
        return bathCount;
    }

    public boolean isHairDryer() {
        return hairDryer;
    }

    public boolean isAirConditioner() {
        return airConditioner;
    }

    public boolean isWiFi() {
        return wiFi;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public boolean isKitchen() {
        return kitchen;
    }
}
