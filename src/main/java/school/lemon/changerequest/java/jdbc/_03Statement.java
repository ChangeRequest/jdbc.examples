package school.lemon.changerequest.java.jdbc;

import org.h2.jdbcx.JdbcDataSource;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getPassword;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUrl;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUserName;

public class _03Statement {

    public static void main(String[] args) throws SQLException {
        JdbcDataSource h2Ds = new JdbcDataSource();
        h2Ds.setUrl(getUrl());
        String insertSql = "INSERT INTO students (name, group_id) VALUES ('Ivanov', "
                + "(SELECT id FROM groups WHERE name = 'Java' AND course = 1 LIMIT 1))";
        try (Connection conn = h2Ds.getConnection(getUserName(), getPassword())) {
            Statement statement = conn.createStatement();
            statement.executeUpdate(insertSql);
            statement.close();
        }
    }
}
