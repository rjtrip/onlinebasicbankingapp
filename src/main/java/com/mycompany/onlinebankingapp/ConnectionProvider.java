package com.mycompany.onlinebankingapp;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionProvider {
    public static Connection getconn() throws ClassNotFoundException, SQLException
    {
            String dbdriver = "org.postgresql.Driver";
            String dbusername = "duolazevbympzo";
            String dbpass = "455159afc63eb44891770e47aac7ea82bcc632cce78be32759e107d06073e61d";
            String dburl = "jdbc:postgresql://ec2-3-95-85-91.compute-1.amazonaws.com:5432/dbqdc7hpn6r0ll";
            if(dbdriver.isEmpty() || dburl.isEmpty())
                return null;
            else{
                Class.forName(dbdriver);
                if(dbusername.isEmpty())
                {
                    Connection conn = DriverManager.getConnection(dburl);
                    return conn;
                }
                else
                {
                    Connection conn = DriverManager.getConnection(dburl,dbusername,dbpass);
                    return conn;
                }
            }
    }
}
