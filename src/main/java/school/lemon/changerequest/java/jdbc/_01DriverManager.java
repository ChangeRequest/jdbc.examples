package school.lemon.changerequest.java.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getPassword;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUrl;
import static school.lemon.changerequest.java.jdbc.DbConfigHolder.getUserName;

public class _01DriverManager {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("org.h2.Driver");
        Connection connection = DriverManager.getConnection(getUrl(), getUserName(), getPassword());
        connection.close();

    }

}
