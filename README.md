# Bookshop


​	    	本项目是一个实现网上图书商城的项目，分前台和后台管理系统，属于B/S交互系统。

​	    	本项目是根据教材  `《Java Web程序设计任务教程(第2版)》`的第13~15章蛋糕商城改编而成。

具体可看 [人邮教育](https://www.ryjiaoyu.com/book/details/44440) 。

> 本项目仅供学习使用，如有侵犯您的权益，请及时联系我删除

------

#### &#9997;更新

- 待修复的Bug
  - 前台购物车超出商品库存数仍可下单.
  - 前台购物车页删除所有商品后仍可下"空订单".
- Bookshop_v1.5.2
  - 购物车商品数量提示改成右上角小红点提示

- Bookshop_v1.5.1
  - 修改搜索栏样式(原弹出的搜索框使用起来不太人性化).
  - 修复因订单日期时间格式由`Date`型换成`LocalDateTime`型后显示多了个“T”字符的bug.
  - 修复用户`sission`到期后从后台跳转到前台首页无显示问题.

- Bookshop_v1.4.1 及以下版本
  - `goods`表新增3个字段: **作者**、**出版社**、**ISBN**.
  - 修改因`goods`表更新后的model层、Dao层、Servlet(Web层)的业务代码及相关jsp页面.
  - 设计并修改前后台背景.
  - 模糊查询新增可查作者功能.



#### &#10024;展示



- 前台首页:  https://pic.imgdb.cn/item/639c03ecb1fccdcd36ff92d5.png
![前台首页](https://files.superbed.cn/static/images/92/d5/639c03ecb1fccdcd36ff92d5.png)



- 前台首页热销推荐: https://pic.imgdb.cn/item/639c03f4b1fccdcd36ff9b11.png
![热销推荐](https://files.superbed.cn/static/images/9b/11/639c03f4b1fccdcd36ff9b11.png)



- 前台搜索作者结果: https://pic.imgdb.cn/item/639c03fdb1fccdcd36ffa249.png
![搜索作者结果](https://files.superbed.cn/static/images/a2/49/639c03fdb1fccdcd36ffa249.png)



- 前台书籍详情: https://pic.imgdb.cn/item/639c0404b1fccdcd36ffa989.png
![书籍详情](https://files.superbed.cn/static/images/a9/89/639c0404b1fccdcd36ffa989.png)



- 前台购物车: https://pic.imgdb.cn/item/639c040ab1fccdcd36ffb214.png
![前台购物车](https://files.superbed.cn/static/images/b2/14/639c040ab1fccdcd36ffb214.png)



- 后台首页: https://pic.imgdb.cn/item/639c0412b1fccdcd36ffb9ae.png
![后台首页](https://files.superbed.cn/static/images/b9/ae/639c0412b1fccdcd36ffb9ae.png)



- 后台客户管理: https://pic.imgdb.cn/item/639c041eb1fccdcd36ffc6ba.png
![客户管理](https://files.superbed.cn/static/images/c6/ba/639c041eb1fccdcd36ffc6ba.png)



- 后台订单管理: https://pic.imgdb.cn/item/639c0422b1fccdcd36ffc9ac.png
![订单管理](https://files.superbed.cn/static/images/c9/ac/639c0422b1fccdcd36ffc9ac.png)



- 后台商品管理_商品修改: https://pic.imgdb.cn/item/639c0426b1fccdcd36ffced0.png
![商品修改](https://files.superbed.cn/static/images/ce/d0/639c0426b1fccdcd36ffced0.png)



#### &#128640;大纲

- 前台
  - 用户注册功能
  - 用户登录功能
  - 购物车模块
  - 商品分类查询功能
  - 商品搜索功能
- 后台
  - 商品管理模块
    - 添加
    - 修改
    - 删除
    - 加入or移出条幅推荐
    - 加入or移出热销推荐
    - 加入or移出新品推荐
  - 客户管理模块
    - 添加客户
    - 重置密码
    - 修改
    - 删除
  - 订单管理模块
    - 全部订单页
    - 未付款页
    - 已付款页
    - 配送中页
    - 已完成页
  - 商品类目管理模块
    - 增、删、改



*初始页为前台首页。*



#### &#127752;软件&环境

|   软件or环境    |   版本   |                  安装路径                   |
| :-------------: | :------: | :-----------------------------------------: |
|  IntelliJ IDEA  | 2022.2.2 |   D:\IntelliJ_IDEA\IntelliJ IDEA 2022.2.2   |
|     Tomcat      | 10.0.141 |              D:\tomcat-10.0.14              |
|      JDK17      | 17.07 |            D:\Java\jdk-17.0.7            |
| Windows10专业版 |   20H2   |                     C盘                     |
|      MySQL      | 8.0.31.0 | C:\Program Files\MySQL\MySQL Server 8.0\bin |
| Navicat Premium | 15.0.13  |      D:\Navicat_15\Navicat Premium 15       |

仅供参考



#### &#127827;安装教程

1.  直接拉取本项目到你的IDEA，或者从[蓝奏云](https://wwyw.lanzoue.com/b02237m2j)(密码:47sw)上下载、解压、用IDEA打开.
1.  用数据库可视化工具新建名为`bookshop`的数据库，然后执行本项目里的`bookshop_v1.x.x.sql`中的sql语句建表.
1.  配置Tomcat
1.  引入lib
1.  修改`c3p0-config.xml`数据库连接池配置文件
1.  运行



#### &#128140;联系我

GitHub: [Lin-arm](https://github.com/Lin-arm)

gitee: [lin-arm](https://gitee.com/lin-arm)

Bilibili: [Lin_arm](https://space.bilibili.com/474895641?spm_id_from=333.1007.0.0)

Email: L2979007648@163.com



#### &#129309;参与贡献

- [Lin-arm](https://github.com/Lin-arm)
- 小陈
