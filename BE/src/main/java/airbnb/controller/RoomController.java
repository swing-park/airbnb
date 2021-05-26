package airbnb.controller;

import airbnb.Service.RoomService;
import airbnb.domain.Room;
import airbnb.wrapper.PricesWrapper;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rooms")
public class RoomController {

    private final RoomService roomService;

    public RoomController(RoomService roomService) {
        this.roomService = roomService;
    }

    @GetMapping("/price")
    public PricesWrapper readAllRoomPrices(){
        return new PricesWrapper(roomService.findAllRoomPrice());
    }

//    @PostMapping("/price")
//    public PricesWrapper readPrices(@RequestBody PriceRequest priceRequest){
//        return new PricesWrapper(roomService.findSearchRoomsPrices(priceRequest));
//    }

    @GetMapping("/test")
    public List<Room> test(){
        return roomService.findAll();
    }
}
