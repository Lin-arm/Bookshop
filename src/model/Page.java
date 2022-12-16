package model;

import java.util.List;

/**
 * @className: Page
 * @author: Lin
 * @描述: 页信息
 * @date: 2022/12/10 14:22
 * @version: 1.0
 */
public class Page {
    private int pageNumber;  //当前页码
    private int pageSize;    //每页最多展示商品数
    private int totalCount;   //该类型商品总数
    private int totalPage;   //页总码

    private List<Object> list;

    public void SetPageSizeAndTotalCount(int pageSize,int totalCount)
    {
        this.pageSize=pageSize;
        this.totalCount=totalCount;
        totalPage= (int)Math.ceil((double)totalCount/pageSize);
    }
    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<Object> getList() {
        return list;
    }

    public void setList(List<Object> list) {
        this.list = list;
    }
}
