package airbnb.Service;

import airbnb.dao.UserDao;
import airbnb.dto.ReservationRequest;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserDao userDao;

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public String reservation(String userId, ReservationRequest reservationRequest){
        userDao.reservation(userId,reservationRequest);
        return "예약완료";
    }
}
