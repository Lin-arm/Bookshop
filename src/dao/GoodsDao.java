package dao;

import model.Goods;
import model.Recommend;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;
import utils.DataSourceUtils;

import java.sql.SQLException;
import java.util.*;

/**
 * @className: GoodsDao
 * @author: Lin
 * @描述: 对数据库商品表进行增删改查等操作
 * @date: 2022/12/10 14:28
 * @version: 1.0
 */
public class GoodsDao {
    //select g.id,g.name,g.cover,g.price,t.name typename from recommend r,goods g,type t where type=2 and r.goods_id=g.id and g.type_id=t.id
    //根据推荐类型获取商品列表
    public List<Map<String,Object>> getGoodsList(int recommendType) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select g.id,g.name,g.cover,g.price,t.name typename from recommend r,goods g,type t where type=? and r.goods_id=g.id and g.type_id=t.id";
        return r.query(sql, new MapListHandler(),recommendType);
    }

    //获取推荐栏商品列表
    public List<Map<String,Object>> getScrollGood()throws SQLException{
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select g.id,g.name,g.cover,g.price  from recommend r,goods g where r.goods_id=g.id";
        return r.query(sql, new MapListHandler());
    }
    //根据商品类型id查找
    public List<Goods> selectGoodsByTypeID(int typeID,int pageNumber,int pageSize) throws SQLException {
        if(typeID==0)
        {
            String sql="select * from goods limit ? , ?";
            QueryRunner r=new QueryRunner(DataSourceUtils.getDataSource());
            return  r.query(sql,new BeanListHandler<Goods>(Goods.class),(pageNumber-1)*pageSize,pageSize);
        }
        else
        {
            String sql="select * from goods where type_id=? limit ? , ?";
            QueryRunner r=new QueryRunner(DataSourceUtils.getDataSource());
            return  r.query(sql,new BeanListHandler<Goods>(Goods.class),typeID,(pageNumber-1)*pageSize,pageSize);
        }
    }
    //计算该类型商品数
    public int getCountOfGoodsByTypeID(int typeID) throws SQLException {
        String sql="";
        QueryRunner r=new QueryRunner(DataSourceUtils.getDataSource());
        if(typeID==0)
        {
            sql="select count(*) from goods";
            return r.query(sql,new ScalarHandler<Long>()).intValue();
        }
        else
        {
            sql="select count(*) from goods where type_id=?";
            return r.query(sql,new ScalarHandler<Long>(),typeID).intValue();
        }
    }
    //查看推荐类型商品详情
    public List<Goods> selectGoodsbyRecommend(int type,int pageNumber,int pageSize) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        if(type==0) {
            //当不添加推荐类型限制的时候
//            String sql = " select g.id,g.name,g.cover,g.image1,g.image2,g.intro,g.price,g.stock,t.name typename from goods g,type t where g.type_id=t.id order by g.id limit ?,?";
            String sql = " select g.id,g.name,g.cover,g.image1,g.image2,g.author,g.press,g.isbn,g.intro,g.price,g.stock,t.name typename from goods g,type t where g.type_id=t.id order by g.id limit ?,?";
            return r.query(sql, new BeanListHandler<Goods>(Goods.class),(pageNumber-1)*pageSize,pageSize);

        }

//        String sql = " select g.id,g.name,g.cover,g.image1,g.image2,g.intro,g.price,g.stock,t.name typename from goods g,recommend r,type t where g.id=r.goods_id and g.type_id=t.id and r.type=? order by g.id limit ?,?";
        String sql = " select g.id,g.name,g.cover,g.image1,g.image2,g.author,g.press,g.isbn,g.intro,g.price,g.stock,t.name typename from goods g,recommend r,type t where g.id=r.goods_id and g.type_id=t.id and r.type=? order by g.id limit ?,?";
        return r.query(sql, new BeanListHandler<Goods>(Goods.class),type,(pageNumber-1)*pageSize,pageSize);
    }
    //获取该推荐类型商品总数
    public int getRecommendCountOfGoodsByTypeID(int type) throws SQLException {
        if(type==0)return getCountOfGoodsByTypeID(0);
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select count(*) from recommend where type=?";
        return r.query(sql, new ScalarHandler<Long>(),type).intValue();
    }
    //获取商品具体信息
    public Goods getGoodsById(int id) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
//        String sql = "select g.id,g.name,g.cover,g.image1,g.image2,g.price,g.intro,g.stock,t.id typeid,t.name typename from goods g,type t where g.id = ? and g.type_id=t.id";
        String sql = "select g.id,g.name,g.cover,g.image1,g.image2,g.author,g.press,g.isbn,g.price,g.intro,g.stock,t.id typeid,t.name typename from goods g,type t where g.id = ? and g.type_id=t.id";
        return r.query(sql, new BeanHandler<Goods>(Goods.class),id);
    }
    //模糊搜索计数
    public int getSearchCount(String keyword) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select count(*) from goods where name like ?";
        return r.query(sql, new ScalarHandler<Long>(),"%"+keyword+"%").intValue();
    }
    //模糊搜索商品List
    public List<Goods> selectSearchGoods(String keyword, int pageNumber, int pageSize) throws SQLException{
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
//        String sql = "select * from goods where name like ? limit ?,?";
        String sql = "select * from goods where concat(name,author) like ? limit ?,?";   //多字段查询
        return r.query(sql, new BeanListHandler<Goods>(Goods.class),"%"+keyword+"%",(pageNumber-1)*pageSize,pageSize);
    }
    //是属于推荐栏(轮播)商品
    public boolean isScroll(Goods g) throws SQLException {
        return isRecommend(g, 1);
    }
    //是属于热销商品
    public boolean isHot(Goods g) throws SQLException {
        return isRecommend(g, 2);
    }
    //是属于新品商品
    public boolean isNew(Goods g) throws SQLException {
        return isRecommend(g, 3);
    }
    //判断该商品的类型(推荐、热销、新品)
    private boolean isRecommend(Goods g,int type) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from recommend where type=? and goods_id=?";
        Recommend recommend = r.query(sql, new BeanHandler<Recommend>(Recommend.class),type,g.getId());
        if(recommend==null) {
            return false;
        }else {
            return true;
        }
    }
    //将该商品插入(推荐、热销、新品)类型
    public void addRecommend(int id,int type) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into recommend(type,goods_id) values(?,?)";
        r.update(sql,type,id);
    }
    //删除该商品的类型(推荐、热销、新品)
    public void removeRecommend(int id,int type) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "delete from recommend where type=? and goods_id=?";
        r.update(sql,type,id);
    }
    //新增商品
    public void insert(Goods g) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "insert into goods(name,cover,image1,image2,price,author,press,isbn,intro,stock,type_id) values(?,?,?,?,?,?,?,?,?,?,?)";
        r.update(sql,g.getName(),g.getCover(),g.getImage1(),g.getImage2(),g.getPrice(),g.getAuthor(),g.getPress(),g.getIsbn(),g.getIntro(),g.getStock(),g.getType().getId());
    }
    //修改商品
    public void update(Goods g) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update goods set name=?,cover=?,image1=?,image2=?,price=?,author=?,press=?,isbn=?,intro=?,stock=?,type_id=? where id=?";
        r.update(sql,g.getName(),g.getCover(),g.getImage1(),g.getImage2(),g.getPrice(),g.getAuthor(),g.getPress(),g.getIsbn(),g.getIntro(),g.getStock(),g.getType().getId(),g.getId());
    }
    //删除商品
    public void delete(int id) throws SQLException {
        QueryRunner r = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "delete from goods where id = ?";
        r.update(sql,id);
    }
}
