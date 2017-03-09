package school.lemon.changerequest.java.jdbc;

import org.h2.jdbcx.JdbcDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getPassword;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUrl;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUserName;

public class _04PreparedStatement {

    public static void main(String[] args) throws SQLException {
        JdbcDataSource h2Ds = new JdbcDataSource();
        h2Ds.setUrl(getUrl());
        String insertSql = "INSERT INTO students (name, group_id) VALUES (?, "
                + "(SELECT id FROM groups WHERE name = ? AND course = ? LIMIT 1))";
        try (Connection conn = h2Ds.getConnection(getUserName(), getPassword())) {
            PreparedStatement preparedStatement = conn.prepareStatement(insertSql);
            preparedStatement.setString(1, "Petrov");
            preparedStatement.setString(2, "PHP");
            preparedStatement.setInt(3, 2);
            preparedStatement.execute();
            preparedStatement.close();
        }
    }

}
