package net.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.member.db.*;

public class MemberDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public MemberDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB ���� ���� : " + ex);
			return;
		}
	}

	// ���̵�� ��й�ȣ Ȯ��
	public boolean isUser(String id, String pw) {
		String member_sql = "select member_pw from member_list where member_id=?";
		try {
			pstmt = con.prepareStatement(member_sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				if (pw.equals((String) rs.getString(1))) {
					return true;
				}
			}

		} catch (SQLException ex) {
			System.out.println("isUser ���� : " + ex);
			return false;
		}
		return false;
	}

	// ȸ������
	public boolean memberJoin(MemberBean bean) throws Exception {

		int result = 0;

		try {
			String sql = "INSERT INTO member_list(member_code, member_id, member_pw, member_name, member_mail,"
					+ " member_phone, member_birthday, member_address) "
					+ "VALUES(member_list_SEQ.NEXTVAL,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getMember_id());
			pstmt.setString(2, bean.getMember_pw());
			pstmt.setString(3, bean.getMember_name());
			pstmt.setString(4, bean.getMember_mail());
			pstmt.setString(5, bean.getMember_phone());
			pstmt.setString(6, bean.getMember_birthday());
			pstmt.setString(7, bean.getMember_address());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;
			return true;

		} catch (Exception ex) {
			System.out.println("meberJoin ���� : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;

	}

	// ��ȸ�� ó��
	public boolean nonmemberJoin(NonMemberBean bean) throws Exception {

		int result = 0;

		try {
			String sql = "INSERT INTO nonmember_list(nonmember_code, nonmember_name, nonmember_phone) "
					+ "VALUES(nonmember_list_SEQ.NEXTVAL,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getNonmember_name());
			pstmt.setString(2, bean.getNonmember_phone());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;
			return true;

		} catch (Exception ex) {
			System.out.println("nonmeberJoin ���� : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;

	}

	public int getMemberCode(String id) throws Exception {
		try {
			pstmt = con.prepareStatement("select member_code from member_list where member_id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return rs.getInt("member_code");
			}
		} catch (Exception ex) {
			System.out.println("getMemberDetail ���� : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return -1;
	}

	// ȸ�� ���� ���� �޾ƿ���
	public MemberBean getMemberDetail(String id) throws Exception {
		MemberBean bean = null;
		try {
			pstmt = con.prepareStatement("select * from member_list where member_id = ?");
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean = new MemberBean();
				bean.setMember_code(rs.getInt("member_code"));
				bean.setMember_id(rs.getString("member_id"));
				bean.setMember_pw(rs.getString("member_pw"));
				bean.setMember_name(rs.getString("member_name"));
				bean.setMember_mail(rs.getString("member_mail"));
				bean.setMember_phone(rs.getString("member_phone"));
				bean.setMember_birthday(rs.getString("member_birthday"));
				bean.setMember_address(rs.getString("member_address"));
				bean.setMember_rank(rs.getString("member_rank"));

			}
			return bean;
		} catch (Exception ex) {
			System.out.println("getMemberDetail ���� : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}

	// ȸ������
	public boolean memberModify(MemberBean bean, String loginid) throws Exception {

		int result = 0;

		try {
			String sql = "update member_list set member_pw=?, member_phone=?, member_address=? where member_id=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getMember_pw());
			pstmt.setString(2, bean.getMember_phone());
			pstmt.setString(3, bean.getMember_address());
			pstmt.setString(4, loginid);

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;
			return true;

		} catch (Exception ex) {
			System.out.println("meberModify ���� : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;

	}

	// ȸ�� �� ���
	public int getMemberCount() {
		int x = 0;
		try {
			pstmt = con.prepareStatement("select count(*) from member_list");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception ex) {
			System.out.println("getMemberCount ����: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return x;
	}

	// ȸ�� ��� �޾ƿ���
	public List getMemberList() {

		String member_list_sql = "select * from member_list order by member_code";

		List list = new ArrayList();

		try {
			pstmt = con.prepareStatement(member_list_sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setMember_address(rs.getString("member_address"));
				bean.setMember_birthday(rs.getString("member_birthday"));
				bean.setMember_code(rs.getInt("member_code"));
				bean.setMember_id(rs.getString("member_id"));
				bean.setMember_mail(rs.getString("member_mail"));
				bean.setMember_name(rs.getString("member_name"));
				bean.setMember_phone(rs.getString("member_name"));
				bean.setMember_pw(rs.getString("member_pw"));
				bean.setMember_rank(rs.getString("member_rank"));
				list.add(bean);
			}

			return list;
		} catch (Exception ex) {
			System.out.println("getMemberList ���� : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}

	// ȸ�� ����
	public boolean memberDelete(String member_id) {
		String member_delete_sql = "delete from member_list where member_id=?";

		int result = 0;

		try {
			pstmt = con.prepareStatement(member_delete_sql);
			pstmt.setString(1, member_id);
			result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
			System.out.println("memberDelete ���� : " + ex);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
			} catch (Exception ex) {
			}
		}

		return false;
	}

}
