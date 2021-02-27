package com.Jianzhou.dao;

import com.Jianzhou.utils.JdbcUtil;
import com.google.gson.JsonNull;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @ClassName talltTableDao
 * @Description TODO
 * @Author
 * @Date 2021/2/27
 **/
public class talltTableDao {
   private JdbcUtil jdbcUtil = new JdbcUtil();
    /**
     * 实现对表的增 删 改 查
     */
    public int add( String name, String debt, String desc,String date){
        String sql = "insert into tallytable(tallytable.name,debt,tallytable.desc,date) values(?,?,?,?)";

        jdbcUtil.createConnection();
        PreparedStatement preparement = jdbcUtil.createPreparement(sql);
        int i = 0;
        try {
            preparement.setString(1,name);
            preparement.setDouble(2,Double.parseDouble(debt));
            preparement.setString(3,desc);
            preparement.setDate(4,Date.valueOf(date));
            i = preparement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbcUtil.close();
        }
        return i;
    }

    public int delete(String id){
        String sql = "delete from tallytable where id = ?";

        jdbcUtil.createConnection();
        PreparedStatement preparement = jdbcUtil.createPreparement(sql);
        int i = 0;
        try {
            preparement.setInt(1,Integer.valueOf(id));
            i = preparement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbcUtil.close();
        }
        return i;
    }
    public int update(String id ,String name,String debt ,String desc,String date){
        String sql = "update tallytable set tallytable.name = ?,debt = ?, tallytable.desc = ?, date = ? where id = ? ";

        jdbcUtil.createConnection();
        PreparedStatement preparement = jdbcUtil.createPreparement(sql);
        int i = 0;
        try {
            preparement.setString(1,name);
            preparement.setDouble(2,Double.parseDouble(debt));
            preparement.setString(3,desc);
            preparement.setDate(4,Date.valueOf(date));
            preparement.setInt(5,Integer.valueOf(id));
            i = preparement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            jdbcUtil.close();
        }
        return i;
    }
    public void select(String name){
        String sql = "select * from tallytable where tallytable.name = ?";

        jdbcUtil.createConnection();
        PreparedStatement preparement = jdbcUtil.createPreparement(sql);
        ResultSet resultSet = null;
        try {
            preparement.setString(1,name);
            resultSet = preparement.executeQuery();
            while (resultSet.next()){
                String id = resultSet.getString(1);
                String nName = resultSet.getString(2);
                String debt = resultSet.getString(3);
                String desc = resultSet.getString(4);
                String date = resultSet.getString(5);
//                System.out.println(id +
//                        " " + nName +
//                        " " + debt +
//                        " " + desc +
//                        " " + date);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            jdbcUtil.close();

        }

    }

    public static void main(String[] args) {
        talltTableDao talltTableDao = new talltTableDao();
//        int add = talltTableDao.add("zhoujian", "312", "香烟", "2021-2-4");
//        System.out.println(add);
//        int delete = talltTableDao.delete("4");
//        System.out.println(delete);
//        int update = talltTableDao.update("1", "Limeiyu", "112", "haochi", "2020-12-1");
//        System.out.println(update);
        talltTableDao.select("zhoujian");
    }
}
