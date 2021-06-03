package airbnb.controller;

import airbnb.Service.UserService;
import airbnb.dto.ReservationRequest;
import airbnb.dto.WishRequest;
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

    @PostMapping("/wish")
    public String wish(@PathVariable String userId, @RequestBody WishRequest wishRequest){
        return userService.wish(userId,wishRequest);
    }

    @GetMapping("/reservation")
    public RoomResponseWrapper findReservationRooms(@PathVariable String userId){
        return new RoomResponseWrapper(userService.findReservationRooms(userId));
    }

    @GetMapping("/wish")
    public RoomResponseWrapper findWishRooms(@PathVariable String userId){
        return new RoomResponseWrapper(userService.findWishRooms(userId));
    }
}
