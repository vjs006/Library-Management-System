/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LMSMiniProject;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author skr
 */
public class DbConnection {
    private static Connection con = null;
    
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        if(con != null) return con;
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            try {
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
            }
            catch (SQLException ex) {
                Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE,null, ex);
                throw ex;
            }
        }
        catch(ClassNotFoundException ex){
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE,null, ex);
            throw ex;
        }
        return con;
    }
}
