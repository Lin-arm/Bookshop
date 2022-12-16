package utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * @className: DataSourceUtils
 * @author: Lin
 * @描述: 获取数据源和数据库连接
 * @date: 2022/11/23 17:27
 * @version: 1.0
 */
public class DataSourceUtils {
    private static DataSource ds=new ComboPooledDataSource();

    public static DataSource getDataSource()
    {
        return  ds;
    }
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
}
