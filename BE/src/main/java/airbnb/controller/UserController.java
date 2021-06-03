package airbnb.controller;

import airbnb.Service.UserService;
import airbnb.dto.ReservationRequest;
import airbnb.wrapper.RoomResponseWrapper;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;

@RestController("/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/{userId}/reservation")
    public String reservation(@PathVariable String userId, @RequestBody ReservationRequest reservationRequest){
        return userService.reservation(userId,reservationRequest);
    }

    @GetMapping("/{userId}/reservation")
    public RoomResponseWrapper findReservationRooms(@PathVariable String userId){
        return new RoomResponseWrapper(userService.findReservationRooms(userId));
    }
}
