package model;

/**
 * @className: Goods
 * @author: Lin
 * @描述: 商品实体
 * @date: 2022/12/10 13:34
 * @version: 1.2.0
 */
public class Goods {
	private int id;
	private String name;    //书名
	private String cover;   //封面图
	private String image1;
	private String image2;
	private float price;    //价格
	private String author;  //作者
	private String press;   //出版社
	private String isbn;    //ISBN
	private String intro;   //详情
	private int stock;      //库存
	private Type type;
	
	private boolean isScroll;    //是否属条幅(首页轮播)
	private boolean isHot;       //是否属热销
	private boolean isNew;       //是否属新品
	
	
	public boolean getIsScroll() {
		return isScroll;
	}
	public void setScroll(boolean isScroll) {
		this.isScroll = isScroll;
	}
	public boolean getIsHot() {
		return isHot;
	}
	public void setHot(boolean isHot) {
		this.isHot = isHot;
	}
	public boolean getIsNew() {
		return isNew;
	}
	public void setNew(boolean isNew) {
		this.isNew = isNew;
	}
	public void setTypeid(int typeid) {
		if(type==null) {
			type = new Type();
		}
		type.setId(typeid);
	}
	public void setTypename(String typename) {
		if(type==null) {
			type = new Type();
		}
		type.setName(typename);
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", cover=" + cover + ", image1=" + image1 + ", image2=" + image2
				+ ", price=" + price + ", author=" + author + ", press=" + press + ", ISBN=" + isbn + ", intro=" + intro
				+ ", stock=" + stock + ", type=" + type + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}

	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public Goods() {
		super();
	}
	public Goods(int id, String name, String cover, String image1, String image2, float price, String intro, int stock,
			Type type) {
		super();
		this.id = id;
		this.name = name;
		this.cover = cover;
		this.image1 = image1;
		this.image2 = image2;
		this.price = price;
		this.intro = intro;
		this.stock = stock;
		this.type = type;
	}
	public Goods(int id, String name, String cover, String image1, String image2, float price,
				 String author, String press, String isbn, String intro, int stock, Type type) {
		super();
		this.id = id;
		this.name = name;
		this.cover = cover;
		this.image1 = image1;
		this.image2 = image2;
		this.price = price;
		this.author = author;
		this.press = press;
		this.isbn = isbn;
		this.intro = intro;
		this.stock = stock;
		this.type = type;
	}
	
}
