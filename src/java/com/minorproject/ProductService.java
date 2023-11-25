package com.minorproject;
import java.sql.DriverManager;
import oracle.jdbc.OracleResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;
public class ProductService {

    public ArrayList<Integer> getProductPrices() {
        List<Integer> prices = new ArrayList<>();
        try {
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            OracleConnection oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-LJCR5EH:1521:ORCL", "Himanish", "MinorProject");
            String sql = "SELECT price FROM products";
            OraclePreparedStatement ops = (OraclePreparedStatement) oconn.prepareCall(sql);
            ops.execute(); // Execute the query using ops

            try (OracleResultSet rs = (OracleResultSet) ops.executeQuery()) {
                while (rs.next()) {
                    int price = rs.getInt("price");
                    prices.add(price);
                }
            }
            ops.close();
            oconn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new ArrayList<>(prices);
    }

}
