package airbnb.dao;

import airbnb.domain.User;
import airbnb.dto.ReservationRequest;
import airbnb.mapper.UserMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

    private final NamedParameterJdbcTemplate jdbcTemplate;
    private final UserMapper userMapper;
    private final MapSqlParameterSource parameter = new MapSqlParameterSource();

    public UserDao(NamedParameterJdbcTemplate jdbcTemplate, UserMapper userMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.userMapper = userMapper;
    }

    public User findById(String userId){
        String sql = "SELECT user.id, image.url FROM user JOIN image ON user.id = image.user_id " +
                "WHERE user.id = :userId";
        parameter.addValue("userId", userId);
        return jdbcTemplate.queryForObject(sql,parameter,userMapper);
    }

    public void reservation(String userId, ReservationRequest reservationRequest){
        String sql = "INSERT INTO reservation(user_Id, people_count, room_id, check_in, check_out) " +
                "VALUE (:userId,:people,:roomId, :checkIn, :checkOut)";
        parameter.addValue("userId", userId);
        parameter.addValue("people", reservationRequest.getPeopleCount());
        parameter.addValue("roomId", reservationRequest.getRoomId());
        parameter.addValue("checkIn", reservationRequest.getSchedule().getCheckIn());
        parameter.addValue("checkOut", reservationRequest.getSchedule().getCheckOut());
        jdbcTemplate.update(sql,parameter);
    }
}
