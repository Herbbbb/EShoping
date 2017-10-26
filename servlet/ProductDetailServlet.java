package com.qianfeng.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/uploadProduct")
public class ProductDetailServlet extends HttpServlet{
	/**
	 * 实现商品详情展示页面的图片获取
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		InputStream in=null;
		OutputStream out=null;
		String filePath=null;
		String fileName=null;
		DiskFileItemFactory factory=new DiskFileItemFactory();
		//设置工厂限制
		factory.setSizeThreshold(1024*1024*5);
		//设置临时文件的位置
		File file=new File("d://aa");
		if(!file.exists()){
			file.mkdirs();
		}
		factory.setRepository(file);
		//创建一个新的文件上传处理程序
		ServletFileUpload fileUpload=new ServletFileUpload(factory);
		//设置文件的大小
		fileUpload.setSizeMax(1024*1024*3);
		try {
			List<?> items=fileUpload.parseRequest(req);
			Iterator<?> it=items.iterator();
			while(it.hasNext()){
				FileItem item=(FileItem) it.next();
				if(item.isFormField()){
					//username=item.getFieldName();
					//password=item.getFieldName();
				}else{
					if(item.getFieldName()!=null && !item.getFieldName().equals("")){
						//读取文件
						File tempFile = new File(item.getName());
						filePath=tempFile.getName();
						//上传文件的保存路径------>在web项目中，默认路径是WebRoot
						File file1 = new File("E:/workspace/EShoping/WebContent/products", tempFile.getName());
						try {
							//写文件
							item.write(file1);
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
					}
				}
				
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(in!=null){
				in.close();
			}
			if(out!=null){
				out.close();
			}
		}
		System.out.println(filePath);
		req.setAttribute("path",filePath);
		req.getRequestDispatcher("product_detail.jsp").forward(req, resp);
	}
	
}
