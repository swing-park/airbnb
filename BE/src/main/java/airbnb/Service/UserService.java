package airbnb.Service;

import airbnb.dao.RoomDao;
import airbnb.dao.UserDao;
import airbnb.domain.Room;
import airbnb.dto.ReservationRequest;
import airbnb.dto.RoomResponse;
import airbnb.dto.WishRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService {

    private final UserDao userDao;
    private final RoomDao roomDao;

    public UserService(UserDao userDao, RoomDao roomDao) {
        this.userDao = userDao;
        this.roomDao = roomDao;
    }

    public String reservation(String userId, ReservationRequest reservationRequest) {
        userDao.reservation(userId, reservationRequest);
        return "예약완료";
    }

    public String wish(String userId, WishRequest wishRequest){
        userDao.wish(userId, wishRequest);
        return "위시리스트 추가 완료";
    }

    public List<RoomResponse> findReservationRooms(String userId) {
        List<Room>rooms = roomDao.findReservationRoom(userId);
        return rooms.stream().map(room -> RoomResponse.of(room,userDao.findById(room.getHostUserId()))).collect(Collectors.toList());
    }

    public List<RoomResponse> findWishRooms(String userId){
        List<Room>rooms = roomDao.findWishRoom(userId);
        return rooms.stream().map(room -> RoomResponse.of(room,userDao.findById(room.getHostUserId()))).collect(Collectors.toList());
    }
}
