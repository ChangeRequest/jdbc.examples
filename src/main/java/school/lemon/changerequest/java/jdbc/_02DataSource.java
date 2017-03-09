package school.lemon.changerequest.java.jdbc;

import org.h2.jdbcx.JdbcDataSource;

import java.sql.Connection;
import java.sql.SQLException;

import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getPassword;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUrl;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUserName;

public class _02DataSource {

    public static void main(String[] args) throws SQLException {
        JdbcDataSource h2Ds = new JdbcDataSource();
        h2Ds.setUrl(getUrl());
        Connection conn = h2Ds.getConnection(getUserName(), getPassword());
        conn.close();
    }

}
