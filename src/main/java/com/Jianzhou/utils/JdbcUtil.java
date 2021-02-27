package com.Jianzhou.utils;


import java.sql.*;

/**
 * @ClassName JdbcUtil
 * @Description TODO
 * @Author ZhouJian
 * @Date 2021/2/27
 **/
public class JdbcUtil {
    /**
     * 全局变量
     */
    private Connection connection = null;
    private PreparedStatement preparedStatement = null;
    /**
     * 加载驱动
     */
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    /**
     * 建立连接
     */
    public void createConnection(){

            try {
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zhoujian","root","123321");
            } catch (SQLException e) {
                e.printStackTrace();
            }


    }
    /**
     * 创建搬运工具
     */
    public PreparedStatement createPreparement(String sql){
        if ( connection != null) {
            try {
                preparedStatement = connection.prepareStatement(sql);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else{
            System.out.println("先创建连接，在创建运输工具");
        }
        return preparedStatement;
    }
    /**
     * 关闭运输工具
     */
    public void close(){
        if (preparedStatement != null && connection != null) {
            try {
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else{
            System.out.println("连接和运输工具有一个没有开启");
        }
    }
    /**
     测试
     */
    public static void main(String[] args) {
        String sql = "select * from tallytable";
        JdbcUtil jdbcUtil = new JdbcUtil();
        jdbcUtil.createConnection();
        PreparedStatement preparement = jdbcUtil.createPreparement(sql);
        try {
            ResultSet resultSet = preparement.executeQuery(sql);
                while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double debt = resultSet.getDouble("debt");
                String desc = resultSet.getString("desc");
                Date date = resultSet.getDate("date");
                System.out.println(id + " " + name + " " + debt + " " + desc + " " + date );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdbcUtil.close();

    }

}
