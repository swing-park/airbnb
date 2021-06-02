package airbnb.dao;

import airbnb.domain.User;
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
}
