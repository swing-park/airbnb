package airbnb.controller;

import airbnb.Service.UserService;
import airbnb.dto.ReservationRequest;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("users/{userId}/reservation")
    public String reservation(@PathVariable String userId, @RequestBody ReservationRequest reservationRequest){
        return userService.reservation(userId,reservationRequest);
    }
}
