package dao;

import model.*;
import org.apache.commons.dbutils.*;
import utils.*;
import java.math.*;
import java.sql.*;
import java.util.*;
import org.apache.commons.dbutils.handlers.*;

public class OrderDao {
    public void insertOrder(Connection con, Order order) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "insert into orderlist(total,amount,status,paytype,name,phone,address,datetime,user_id) values(?,?,?,?,?,?,?,?,?)";
        r.update(con,sql,
                order.getTotal(),order.getAmount(),order.getStatus(),
                order.getPaytype(),order.getName(),order.getPhone(),
                order.getAddress(),order.getDatetime(),order.getUser().getId() );
    }
    public int getLastInsertId(Connection con) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql = "select last_insert_id()";
        BigInteger bi = r.query(con, sql,new ScalarHandler<BigInteger>());
        return Integer.parseInt(bi.toString());
    }
    public void insertOrderItem(Connection con, OrderItem item) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql ="insert into orderitem(price,amount,goods_id,order_id) values(?,?,?,?)";
        r.update(con,sql,item.getPrice(),item.getAmount(),item.getGoods().getId(),item.getOrder().getId());
    }
    public List<Order> selectAll(int userid) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from orderlist where user_id=? order by datetime desc";
        return r.query(sql, new BeanListHandler<Order>(Order.class),userid);
    }
    public List<OrderItem> selectAllItem(int orderid) throws SQLException{
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select i.id,i.price,i.amount,g.name from orderitem i,goods g where order_id=? and i.goods_id=g.id";
        return r.query(sql, new BeanListHandler<OrderItem>(OrderItem.class),orderid);
    }
    public int getOrderCount(int status) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "";
        if(status==0) {
            sql = "select count(*) from orderlist";
            return r.query(sql, new ScalarHandler<Long>()).intValue();
        }else {
            sql = "select count(*) from orderlist where status=?";
            return r.query(sql, new ScalarHandler<Long>(),status).intValue();
        }
    }
    public List<Order> selectOrderList(int status, int pageNumber, int pageSize) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        if(status==0) {
            String sql = "select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from orderlist o,user u where o.user_id=u.id order by o.datetime desc limit ?,?";
            return r.query(sql, new BeanListHandler<Order>(Order.class), (pageNumber-1)*pageSize,pageSize );
        }else {
            String sql = "select o.id,o.total,o.amount,o.status,o.paytype,o.name,o.phone,o.address,o.datetime,u.username from orderlist o,user u where o.user_id=u.id and o.status=? order by o.datetime desc limit ?,?";
            return r.query(sql, new BeanListHandler<Order>(Order.class),status, (pageNumber-1)*pageSize,pageSize );
        }
    }
    public void updateStatus(int id,int status) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql ="update orderlist set status=? where id = ?";
        r.update(sql,status,id);
    }
    public void deleteOrder(Connection con ,int id) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql ="delete from orderlist where id = ?";
        r.update(con,sql,id);
    }
    public void deleteOrderItem(Connection con ,int id) throws SQLException {
        QueryRunner r = new QueryRunner();
        String sql ="delete from orderitem where order_id=?";
        r.update(con,sql,id);
    }
}
