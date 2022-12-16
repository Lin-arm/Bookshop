package servlet;

import model.Goods;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import service.GoodsService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

@WebServlet(name = "admin_goods_edit",urlPatterns = "/admin/goods_edit")
public class AdminGoodsEditServlet extends HttpServlet {
    private GoodsService gService = new GoodsService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List<FileItem> list = upload.parseRequest(request);
            Goods g = new Goods();
            int pageNumber =1;
            int type=0;
            for(FileItem item:list) {
                if(item.isFormField()) {              //isFormField():是否形成字段   true:普通类型;false:其它文件类型
                    switch(item.getFieldName()) {
                        case "id":
                            g.setId(Integer.parseInt(item.getString("utf-8")));
                            break;
                        case "name":
                            g.setName(item.getString("utf-8"));
                            break;
                        case "price":
                            g.setPrice(Float.parseFloat(item.getString("utf-8")));
                            break;
                        case "intro":
                            g.setIntro(item.getString("utf-8"));
                            break;
                        case "author":
                            g.setAuthor(item.getString("utf-8"));
                            break;
                        case "press":
                            g.setPress(item.getString("utf-8"));
                            break;
                        case "isbn":
                            g.setIsbn(item.getString("utf-8"));
                            break;
                        case "cover":
                            g.setCover(item.getString("utf-8"));
                            break;
                        case "image1":
                            g.setImage1(item.getString("utf-8"));
                            break;
                        case "image2":
                            g.setImage2(item.getString("utf-8"));
                            break;
                        case "stock":
                            g.setStock(Integer.parseInt(item.getString("utf-8")));
                            break;
                        case "typeid":
                            g.setTypeid(Integer.parseInt(item.getString("utf-8")));
                            break;
                        case "pageNumber":
                            pageNumber=Integer.parseInt(item.getString("utf-8"));
                            break;
                        case "type":
                            type = Integer.parseInt(item.getString("utf-8"));
                            break;
                    }
                }else {
                    if(item.getInputStream().available()<=0)continue;
                    String fileName = item.getName();          //获取上传的文件名
                    fileName = fileName.substring(fileName.lastIndexOf("."));
                    fileName = "/"+new Date().getTime()+fileName;
                    String path = this.getServletContext().getRealPath("/picture")+fileName;
                    InputStream in = item.getInputStream();
                    FileOutputStream out = new FileOutputStream(path);
                    byte[] buffer = new byte[1024];
                    int len=0;
                    while( (len=in.read(buffer))>0 ) {
                        out.write(buffer);
                    }
                    in.close();
                    out.close();
                    item.delete();
                    switch(item.getFieldName()) {
                        case "cover":
                            g.setCover("/picture"+fileName);
                            break;
                        case "image1":
                            g.setImage1("/picture"+fileName);
                            break;
                        case "image2":
                            g.setImage2("/picture"+fileName);
                            break;
                    }
                }
            }
            gService.update(g);
            request.getRequestDispatcher("/admin/goods_list?pageNumber="+pageNumber+"&type="+type).forward(request, response);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

}

