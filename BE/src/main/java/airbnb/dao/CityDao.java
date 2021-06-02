package airbnb.dao;

import airbnb.domain.City;
import airbnb.mapper.CityMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CityDao {

    private final JdbcTemplate jdbcTemplate;
    private final ImageDao imageDao;
    private final CityMapper cityMapper;

    public CityDao(JdbcTemplate jdbcTemplate, ImageDao imageDao, CityMapper cityMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.imageDao = imageDao;
        this.cityMapper = cityMapper;
    }

    public List<City> findAll() {
        String sql = "SELECT id, name, latitude, longitude  FROM city";
        List<City> cities = jdbcTemplate.query(sql, cityMapper);
        cities.forEach(city -> city.setImages(imageDao.findByCityId(city.getId())));
        return cities;
    }
}
