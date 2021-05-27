package airbnb.dao;

import airbnb.domain.City;
import airbnb.domain.Room;
import airbnb.domain.Schedule;
import airbnb.mapper.ImageMapper;
import airbnb.mapper.RoomMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Repository
public class RoomDao {

    private final NamedParameterJdbcTemplate jdbcTemplate;
    private final RoomMapper roomMapper = new RoomMapper();
    private final ImageDao imageDao;

    public RoomDao(NamedParameterJdbcTemplate jdbcTemplate, ImageDao imageDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.imageDao = imageDao;
    }

    public List<Room> findAll() {
        String sql = "SELECT id, price, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax FROM room";
        List<Room> rooms = jdbcTemplate.query(sql, roomMapper);
        rooms.forEach(room -> room.setImages(imageDao.findByRoomId(room.getId())));
        return rooms;
    }

    public List<Room> findByCityIdAndSchedule(Long cityId, Schedule schedule) {
        String sql = "SELECT a.id, price, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax FROM room AS a left join reservation AS b ON a.id = b.room_id " +
                "WHERE b.id IS NULL OR ((b.check_in NOT BETWEEN :checkIn AND :checkOut) AND (b.check_out NOT BETWEEN :checkIn AND :checkOut))";
        LocalDate chekIn = schedule.getCheckIn();
        LocalDate chekOut = schedule.getCheckOut();

        MapSqlParameterSource parameter = new MapSqlParameterSource();
        parameter.addValue("cityId", cityId);
        parameter.addValue("checkIn", chekIn);
        parameter.addValue("checkOut", chekOut);

        List<Room> rooms = jdbcTemplate.query(sql, parameter, roomMapper);
        rooms.forEach(room -> room.setImages(imageDao.findByRoomId(room.getId())));
        return rooms;
    }
}
