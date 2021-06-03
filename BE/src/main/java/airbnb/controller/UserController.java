package airbnb.controller;

import airbnb.Service.UserService;
import airbnb.dto.ReservationRequest;
import airbnb.wrapper.RoomResponseWrapper;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;

@RestController
@RequestMapping("/users/{userId}")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/reservation")
    public String reservation(@PathVariable String userId, @RequestBody ReservationRequest reservationRequest){
        return userService.reservation(userId,reservationRequest);
    }

    @GetMapping("/reservation")
    public RoomResponseWrapper findReservationRooms(@PathVariable String userId){
        return new RoomResponseWrapper(userService.findReservationRooms(userId));
    }
}
