package school.lemon.changerequest.java.jdbc;

import org.h2.jdbcx.JdbcDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getPassword;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUrl;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUserName;

public class _05ResultSet {

    public static void main(String[] args) throws SQLException {
        JdbcDataSource h2Ds = new JdbcDataSource();
        h2Ds.setUrl(getUrl());
        String selectSql = "SELECT * FROM groups WHERE course = ?";
        try (Connection conn = h2Ds.getConnection(getUserName(), getPassword())) {
            PreparedStatement preparedStatement = conn.prepareStatement(selectSql);
            preparedStatement.setInt(1, 1);
            preparedStatement.execute();

            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                System.out.println(String.format("id=%d, name=%s, course=%d, scholarship=%f",
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getInt("course"),
                        resultSet.getDouble("scholarship")));
            }

            resultSet.close();
            preparedStatement.close();
        }
    }

}
