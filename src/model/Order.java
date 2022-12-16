package model;

import utils.PriceUtils;

import java.time.LocalDateTime;
import java.util.*;

/**
 * @className: Order
 * @author: Lin
 * @描述: 订单实体类
 * @date: 2022/11/23 18:48
 * @version: 1.0
 */
public class Order {
    private int id;
    private float total;  //总价
    private int amount;  // 商品总数
    private int status;  //1未付款/2已付款/3已发货/4已完成
    private int paytype;  //1微信/2支付宝/3货到付款
    private String name;  //用户名
    private String phone;  //用户电话
    private String address;  //用户地址

//    private Date datetime;  //订单日期 (日期格式与数据库的不兼容)
    private LocalDateTime datetime;  //订单日期(改后)
    private User user;
    private Map<Integer,OrderItem> itemMap = new HashMap<Integer,OrderItem>();
    private List<OrderItem> itemList = new ArrayList<OrderItem>();

    public void setUsername(String username) {
        user = new User();
        user.setUsername(username);
    }
    public void addGoods(Goods g) {
        if(itemMap.containsKey(g.getId())) {
            OrderItem item = itemMap.get(g.getId());
            item.setAmount(item.getAmount()+1);
        }else {
            OrderItem item = new OrderItem(g.getPrice(),1,g,this);
            itemMap.put(g.getId(), item);
        }
        amount++;
        total = PriceUtils.add(total, g.getPrice());
    }

    public List<OrderItem> getItemList() {
        return itemList;
    }

    public void setItemList(List<OrderItem> itemList) {
        this.itemList = itemList;
    }

    public void lessen(int goodsid) {
        if(itemMap.containsKey(goodsid)) {
            OrderItem item = itemMap.get(goodsid);
            item.setAmount(item.getAmount()-1);
            amount--;
            total = PriceUtils.subtract(total, item.getPrice());
            if(item.getAmount()<=0) {
                itemMap.remove(goodsid);
            }
        }
    }
    public void delete(int goodsid)
    {
        if(itemMap.containsKey(goodsid)) {
            OrderItem item = itemMap.get(goodsid);
            total = PriceUtils.subtract(total, item.getAmount()*item.getPrice());
            amount-=item.getAmount();
            itemMap.remove(goodsid);
        }
    }

    public Map<Integer, OrderItem> getItemMap() {
        return itemMap;
    }

    public void setItemMap(Map<Integer, OrderItem> itemMap) {
        this.itemMap = itemMap;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public float getTotal() {
        return total;
    }
    public void setTotal(float total) {
        this.total = total;
    }
    public int getAmount() {
        return amount;
    }
    public void setAmount(int amount) {
        this.amount = amount;
    }
    public int getStatus() {
        return status;
    }
    public void setStatus(int status) {
        this.status = status;
    }
    public int getPaytype() {
        return paytype;
    }
    public void setPaytype(int paytype) {
        this.paytype = paytype;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public LocalDateTime getDatetime() {
        return datetime;
    }
    public void setDatetime(LocalDateTime datetime) {
        this.datetime = datetime;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    public Order() {
        super();
    }
}
