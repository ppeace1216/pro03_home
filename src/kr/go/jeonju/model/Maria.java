package kr.go.jeonju.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Maria {
    static final String DRIVER = "org.mariadb.jdbc.Driver";
    static final String URL = "jdbc:mysql://localhost:3306/jeonju?serverTimezone=Asia/Seoul";
    static final String USER = "root";
    static final String PW = "1234";
    
	public final static String TEST_SELECT_ONE = "select * from test where name=?";
	public final static String TEST_SELECT_ALL = "select * from test";
    
	final static String NOTICE_SELECT_ALL = "select * from notice order by regdate desc";
	final static String NOTICE_VISITED_UPDATE = "update notice set visited = visited + 1 where no=?";
	final static String NOTICE_SELECT_ONE = "select * from notice where no=?";
	final static String NOTICE_INSERT = "insert into notice(title, content) values (?, ?)";
	final static String NOTICE_UPDATE = "update notice set title=?, content=? where no=?";
	final static String NOTICE_DELETE = "delete from notice where no=?";
	
	final static String USER_JOIN = "insert into user(id, pw, name, birth, email, tel, addr) values (?,?,?,?,?,?,?)";
	final static String USER_LOGIN = "select * form user where id=? and pw=?";
	final static String USER_ID_CHECK = "select * from user where id=?";
	final static String USER_ALL = "select * from user";
	final static String USER_UPDATE = "update user set pw=?, name=?, birth=?, email=?, tel=?, addr=? where id=?";
	final static String USER_VISIT_UPDATE = "update user set visted=visted+1 where id=?";
	final static String USER_DELETE = "delete from user where id=?";
	
	final static String LOAD_LAST_NO = "select no from tour order by no desc limit 1";
	final static String FILE_UPLOAD = "insert into pic(tourno, picname, pos) values (?,?,?)";
	final static String JSON_PICLIST = "select * from pic where tourno=?";
	final static String ADD_TOUR = "insert into tour(tourno, cate, title, subtitle, content, addr) values (?,?,?,?,?,?)";
	final static String TOUR_LIST_ALL = "select * from tour";
	final static String TOUR_CATE_LIST = "select a.no, a.tourno, a.cate, a.title, a.subtitle, a.content, b.picname, b.pos from tour a inner join pic b on a.tourno=b.tourno where a.cate=? and b.pos=1";
	final static String TOUR_VISITED_UPDATE = "update tour set visited = visited + 1 where no=?";
	
	final static String TOUR_SEARCH_title_LIST = "select * from tour where title like CONCAT('%',?,'%')"; //'%'+?+'%'
	final static String TOUR_SEARCH_COMMENT_LIST = "select * from tour where content like ?";
	final static String TOUR_SEARCH_ALL_LIST = "select * from tour where title like ? or content like ?";
	final static String TOUR_LIST_DETAIL = "select * from tour where no=?";
	final static String TOUR_DEL = "delete from tour where no=?";
	final static String MODIFY_TOUR = "update tour set tourno=?, cate=?, title=?, subtitle=?, content=?, addr=? where no=?";
	
	
	final static String ADD_IMP = "insert into impress(tourno, cate, id, title, content, star, imgSrc) values (?,?,?,?,?,?,?)";
	
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(DRIVER);
		Connection con = DriverManager.getConnection(URL, USER, PW);
		return con;
	}
	
	public static void close(PreparedStatement pstmt, Connection con) {
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection con) {
		if(rs!=null){
			try {
				rs.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}
