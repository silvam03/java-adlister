import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;


public class JDBCLecture {
    public static void main(String[] args) {

        public List<Album> all() {
            String selectQuery = "SELECT * FROM albums";

            try {
                DriverManager.registerDriver(new Driver());
                Connection connection = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false",
                        "root",
                        "codeup"
                );

                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery(selectQuery);

                List<Album> albums = new ArrayList<>();

                while (rs.next()) {
                    albums.add(
                            new Album(
                                    rs.getLong("id"),
                                    rs.getString("artist"),
                                    rs.getString("name"),
                                    rs.getInt("release_date"),
                                    rs.getString("genre"),
                                    rs.getDouble("sales"),
                                    ));
                }
                return albums;
            } catch(SQLException e) {
                throw new RuntimeException("Error connecting to database.", e)
            }
        }


    }
}
