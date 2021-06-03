package airbnb.dto;

import airbnb.domain.Schedule;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ReservationRequest {

    @JsonProperty("people")
    private final int peopleCount;
    private final Long roomId;
    private final Schedule schedule;

    public ReservationRequest(Long roomId, int peopleCount, Schedule schedule) {
        this.roomId = roomId;
        this.peopleCount = peopleCount;
        this.schedule = schedule;
    }

    public Long getRoomId() {
        return roomId;
    }

    public int getPeopleCount() {
        return peopleCount;
    }

    public Schedule getSchedule() {
        return schedule;
    }
}
