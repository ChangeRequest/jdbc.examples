package school.lemon.changerequest.java.jdbc;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public final class DbConfigHolder {

    private static final String DB_PROPERTIES_FILE = "db-config.properties";

    private static final String URL;
    private static final String USER_NAME;
    private static final String PASSWORD;

    static {
        try (InputStream is = DbConfigHolder.class.getClassLoader().getResourceAsStream(DB_PROPERTIES_FILE)) {
            Properties properties = new Properties();
            properties.load(is);
            URL = properties.getProperty("url");
            USER_NAME = properties.getProperty("username");
            PASSWORD = properties.getProperty("password");
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }

    private DbConfigHolder() {
    }

    public static String getUrl() {
        return URL;
    }

    public static String getUserName() {
        return USER_NAME;
    }

    public static String getPassword() {
        return PASSWORD;
    }

}
