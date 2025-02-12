package com.myproject.myapp.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.myproject.myapp.member.MemberVO;

import com.myproject.myapp.member.JDBCUtil;

public class MemberDAO {
	
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;

	private final String M_INSERT = "insert into member (userid, password, username, email, photo, detail) values (?,sha1(?),?,?,?,?)";
	private final String M_UPDATE = "update member set username=?, email=?, photo=?, detail=? where sid=?";
	private final String M_DELETE = "delete from member  where sid=?";
	private final String M_SELECT = "select * from member  where sid=?";
	private final String M_LIST = "select * from member order by regdate desc";
	private final String M_COUNT = "select count(*) from member";
	public int countMember() {
		System.out.println("===> JDBC로 countMember() 기능 처리");
		int count=0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(M_COUNT);
			rs = stmt.executeQuery();
			if(rs.next())
				count = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;		
	}
	public int insertMember(MemberVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		conn=JDBCUtil.getConnection();
		try {
			
			stmt = conn.prepareStatement(M_INSERT);
			stmt.setString(1, vo.getUserid());
			stmt.setString(2, vo.getPassword());
			stmt.setString(3, vo.getUsername());
			stmt.setString(4, vo.getEmail());
			stmt.setString(5, vo.getPhoto());
			stmt.setString(6, vo.getDetail());
			stmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 글 삭제
	public void deleteMember(MemberVO vo) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(M_DELETE);
			stmt.setInt(1, vo.getSid());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int updateMember(MemberVO vo) {
		System.out.println("===> JDBC로 updateMember() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(M_UPDATE);
			stmt.setString(1, vo.getUsername());
			stmt.setString(2, vo.getEmail());
			stmt.setString(3, vo.getPhoto());
			stmt.setString(4, vo.getDetail());
			stmt.setInt(5, vo.getSid());
						
			System.out.println(vo.getUsername() + "-" + vo.getEmail() + "-" + vo.getPhoto() + "-" + vo.getDetail() + "-" + vo.getSid());
			stmt.executeUpdate();
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}	
	
	public MemberVO getMember(int seq) {
		MemberVO one = new MemberVO();
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(M_SELECT);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setSid(rs.getInt("sid"));
				one.setUserid(rs.getString("userid"));
				one.setUsername(rs.getString("username"));
				one.setEmail(rs.getString("email"));
				one.setPhoto(rs.getString("photo"));
				one.setDetail(rs.getString("detail"));
				one.setRegdate(rs.getDate("regdate"));
							}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
	}
	public MemberVO getOne(int sid) {
		MemberVO one = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(M_SELECT);
			stmt.setInt(1, sid);
			rs = stmt.executeQuery();
			if(rs.next()) {
				one.setSid(rs.getInt("sid"));
				one.setUserid(rs.getString("userid"));
				one.setUsername(rs.getString("username"));
				one.setEmail(rs.getString("email"));
				one.setPhoto(rs.getString("photo"));
				one.setDetail(rs.getString("detail"));
				one.setRegdate(rs.getDate("regdate"));
							}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return one;
		
	}
	public List<MemberVO> getMemberList(){
		List<MemberVO> list = new ArrayList<MemberVO>();
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(M_LIST);
			rs = stmt.executeQuery();
			list=new ArrayList<MemberVO>();
			MemberVO one=new MemberVO();
			while(rs.next()) {
				one = new MemberVO();
				one.setSid(rs.getInt("sid"));
				one.setUserid(rs.getString("userid"));
				one.setUsername(rs.getString("username"));
				one.setEmail(rs.getString("email"));
				one.setRegdate(rs.getDate("regdate"));
				
				list.add(one);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return list;
	}
	public String getPhotoFilename(int sid) {
		String filename = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(M_SELECT);
			stmt.setInt(1, sid);
			rs = stmt.executeQuery();
			if(rs.next()) {
				filename = rs.getString("photo");
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("===> JDBC로 getPhotoFilename() 기능 처리");
		return filename;
	}

}

