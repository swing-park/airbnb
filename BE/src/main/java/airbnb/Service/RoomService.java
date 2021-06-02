package airbnb.Service;

import airbnb.dao.RoomDao;
import airbnb.dao.UserDao;
import airbnb.domain.Room;
import airbnb.domain.User;
import airbnb.dto.PriceRequest;
import airbnb.dto.RoomResponse;
import airbnb.dto.RoomSearchRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RoomService {

    private final RoomDao roomDao;
    private final UserDao userDao;

    public RoomService(RoomDao roomDao, UserDao userDao) {
        this.roomDao = roomDao;
        this.userDao = userDao;
    }

    public List<Integer> findAllRoomPrice() {
        List<Room> rooms = findAll();
        return rooms.stream().map(Room::getPrice).sorted().collect(Collectors.toList());
    }

    public List<Room> findAll() {
        return roomDao.findAll();
    }

    public List<Integer> findSearchRoomPrice(PriceRequest priceRequest) {
        List<Room> rooms = roomDao.findByCityIdAndSchedule(priceRequest.getCityId(), priceRequest.getSchedule());
        return rooms.stream().map(Room::getPrice).sorted().collect(Collectors.toList());
    }

    public List<RoomResponse> SearchRoomToRoomResponseList(RoomSearchRequest roomSearchRequest) {
        List<Room> rooms = roomDao.findSearchRooms(roomSearchRequest.getCityId(), roomSearchRequest.getSchedule(),
                roomSearchRequest.getCost(), roomSearchRequest.getReservationPeopleCount());
        return rooms.stream().map(room -> RoomResponse.of(room,userDao.findById(room.getHostUserId()))).collect(Collectors.toList());
    }
}
