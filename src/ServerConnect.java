
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shuvo Podder
 */
public class ServerConnect {
    
    Connection con = null;
    
    public static Connection ConnectDB(){
    try{
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://50.116.92.215:3306/gv8ydnkk_golfdatabase", "gv8ydnkk_golfusr", "S12345678");       
        //50.116.92.215 is host name
        return con;
        
    }catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
}
}
