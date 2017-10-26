package com.qianfeng.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
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

/**
 * 商品图片的上传
 */
@WebServlet("/productimg")
public class ProductImgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进行图片上传");
		response.setContentType("text/html;charset=utf-8");
		// Create a factory for disk-based file items
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Set factory constraints
		factory.setSizeThreshold(1024*1024*1024);
		//设置临时文件的位置
		factory.setRepository(new File("e://aa"));

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// 设置文件的大小
		upload.setSizeMax(1024*1024*1024);
		
		InputStream in = null;
		OutputStream out = null;
		String filePath = "";
		PrintWriter write = response.getWriter();
		try {
			@SuppressWarnings("unchecked")
			List<FileItem> list = upload.parseRequest(request);
			for(FileItem item : list){
				if(item.isFormField()){
					
				}else {
					String filedName = item.getFieldName();
					String fileName = item.getName();
					filePath = getPath(fileName);
					in = item.getInputStream();
					out = new FileOutputStream(filePath);
					int len = -1;
					while((len = in.read()) != -1){
						out.write(len);
					}
				}
				
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(in != null)
				in.close();
			if(out != null)
				out.close();
			if(filePath.contains("upload")){
				int index = filePath.indexOf("upload") - 1;
				filePath = filePath.substring(index);
			}
			write.write(filePath);
		}
	}
	private String getPath(String fileName) {
		String exit = fileName.substring(fileName.lastIndexOf("."));
		String path = getServletContext().getRealPath("upload/" + System.nanoTime() + exit);
		return path;
	}

}
