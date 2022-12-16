package service;

import dao.UserDao;
import model.Page;
import model.User;

import java.sql.SQLException;
import java.util.List;

/**
 * @className: UserService
 * @author: Lin
 * @描述: 处理用户的业务逻辑,调用 UserDao层方法对数据库进行操作
 *               1.register(用户信息)   用户注册
 *               2.login(用户名,密码)   用户登录
 *               3.selectById(用户id)   查找用户
 *               4.updateUserAddress(用户信息)    更新用户收货信息
 *               5.updatePwd(用户信息)    修改用户密码
 *               6.getUserPage()    获取用户行数?
 *               7.delete(用户id)    删除用户
 *
 * @date: 2022/11/26 19:14
 * @version: 1.0
 */
public class UserService {
    private UserDao uDao = new UserDao();
    public boolean register(User user) {
        try {
            if(uDao.isUsernameExist(user.getUsername())) {
                return false;
            }
            if(uDao.isEmailExist(user.getEmail())) {
                return false;
            }
            uDao.addUser(user);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public User login(String ue,String password) {
        User user=null;
        try {
            user = uDao.selectByUsernamePassword(ue, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(user!=null) {
            return user;
        }
        try {
            user=uDao.selectByEmailPassword(ue, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(user!=null) {
            return user;
        }
        return null;
    }
    public User selectById(int id) {
        User u=null;
        try {
            u = uDao.selectById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }
    public void updateUserAddress(User user) {
        try {
            uDao.updateUserAddress(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void updatePwd(User user) {
        try {
            uDao.updatePwd(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Page getUserPage(int pageNumber) {
        Page p = new Page();
        p.setPageNumber(pageNumber);
        int pageSize = 7;
        int totalCount = 0;
        try {
            totalCount = uDao.selectUserCount();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        p.SetPageSizeAndTotalCount(pageSize, totalCount);
        List list=null;
        try {
            list = uDao.selectUserList( pageNumber, pageSize);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        p.setList(list);
        return p;
    }

    public boolean delete(int id ) {
        try {
            uDao.delete(id);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
