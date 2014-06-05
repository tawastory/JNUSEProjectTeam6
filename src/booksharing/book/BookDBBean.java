package booksharing.book;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import booksharing.board.BoardDataBean;

public class BookDBBean {
	
private static BookDBBean instance = new BookDBBean();
    
    public static BookDBBean getInstance() {
        return instance;
    }
    
    private BookDBBean() {}
    
    private Connection getConnection() throws Exception {
    	 Connection conn=null;
    	    	     	 
    	 String jdbcUrl="jdbc:mysql://localhost:3306/bookshare";
    	 String dbId="root";
    	 //String dbPass="soc337";
    	 String dbPass="7777";
    	 	 
    	 Class.forName("com.mysql.jdbc.Driver");
    	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
         return conn;
    }
 
    public int insertBook(BookDataBean book) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		
        int number=0;
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select count(id) from book");
			rs = pstmt.executeQuery();
			
			if (rs.next()){
		      number=rs.getInt(1);
			}
			
			book.setId(String.valueOf((number+1)));

            pstmt = conn.prepareStatement(
            	"insert into book(id, name, isbn, regdate, location) values (?,?,?,?,?)");
            pstmt.setString(1, book.getId());
            pstmt.setString(2, book.getName());
            pstmt.setString(3, book.getIsbn());
			pstmt.setTimestamp(4, book.getRegdate());
			pstmt.setString(5, book.getLocation());
            pstmt.executeUpdate();
            return 1;
        } catch(Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    public List<BookDataBean> searchBook(String name, String isbn) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		List<BookDataBean> bookList=null;
		
		if(name==null||name=="null"){
			name = "";
		}
		
		if(isbn==null||isbn=="null"){
			isbn = "";
		}
		
        try {
            conn = getConnection();
            sql = "SELECT * FROM book ";
            sql += "WHERE name LIKE '%" + name + "%'" ;
            sql += "AND isbn LIKE '%" + isbn + "%'";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                bookList = new ArrayList<BookDataBean>(20);
                do{
                	BookDataBean book= new BookDataBean();
                	book.setId(rs.getString("id"));
                	book.setName(rs.getString("name"));
                	book.setIsbn(rs.getString("isbn"));
                	book.setRegdate(rs.getTimestamp("regdate"));
                	book.setLocation(rs.getString("location"));
                	bookList.add(book);
			    }while(rs.next());
			}
            
            return bookList;
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return bookList;
    }
    
    public int updateLocation(String id, String location) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = getConnection();
            String sql = "update book ";
       	 	sql += "set location ='" + location + "' ";
       	 	sql += "where id = '" + id + "'";
            pstmt = conn.prepareStatement(sql);
            pstmt.executeUpdate();
            return 1;
        } catch(Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    public List<BookDataBean> detailBook(String id) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		List<BookDataBean> bookList=null;
		
		try {
            conn = getConnection();
            sql = "SELECT * FROM book ";
            sql += "WHERE id = '" + id + "'" ;
            
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                bookList = new ArrayList<BookDataBean>(1);
                BookDataBean book= new BookDataBean();
                
                book.setId(rs.getString("id"));
                book.setName(rs.getString("name"));
                book.setIsbn(rs.getString("isbn"));
                book.setRegdate(rs.getTimestamp("regdate"));
                book.setLocation(rs.getString("location"));
                bookList.add(book);
			}
            
            return bookList;
		} catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		
		return bookList;
    }
}