package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BaiViet;
import beans.DienThoai;
import utils.DBUtils;
import utils.MyUtils;

/**
 * Servlet implementation class DienThoaiServlet
 */
@WebServlet(name ="DienThoai", urlPatterns = {"/DienThoai"})
public class DienThoaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DienThoaiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		String idStr = (String) request.getParameter("maDT");
		String tenkhachhang = (String)request.getParameter("tenkhachhang");
		String tenTK = (String)request.getParameter("tenTK");
        int id = 0;
        try {
            id = Integer.parseInt(idStr);
        } catch (Exception e) {
        }
        DienThoai dt = null;
        BaiViet bv = null;
 
        String errorString = null;
 
        try {
            dt = DBUtils.findDienThoai(conn, id);
            bv = DBUtils.findBaiViet(conn, id);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        String chuadangnhap = null;
        if(tenkhachhang == "")
        	chuadangnhap = "chua dang nhap";
        request.setAttribute("chuadangnhap", chuadangnhap);
        request.setAttribute("dienthoai", dt);
        request.setAttribute("baiviet", bv);
        request.setAttribute("tenkhachhang", tenkhachhang);
        request.setAttribute("tenTK", tenTK);
        String soluong = request.getParameter("soluong");
		request.setAttribute("soluong", soluong);
        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/SanPhamDienThoai.jsp");
        dispatcher.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
