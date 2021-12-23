package com.pm.admin_Petlog.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.admin_Petlog.model.dao.PetlogDao;
import com.pm.admin_Petlog.model.vo.Petlog;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;

public class PetlogService {
	
	/* 1. petlog 전체 게시글 수 */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new PetlogDao().selectListCount(conn);
		close(conn);
		return listCount;
	}
	 
	
	/* 2. 최신글순으로 페이징바에 맞게 조회 */
	public ArrayList<Petlog> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Petlog> list = new PetlogDao().selectList(conn, pi);
		close(conn);
		return list;
		
	}
	
	
	/* 3-1. petlog 조회 */
	public Petlog selectPetlog(int petlogNo) {
		Connection conn = getConnection();
		Petlog p = new PetlogDao().selectPetlog(conn, petlogNo);
		close(conn);
		return p;
	}
	
	/* 3-2. petlog 첨부파일 조회 */
	public Attachment selectAttachment(int petlogNo) {
		Connection conn = getConnection();
		Attachment at = new PetlogDao().selectAttachment(conn, petlogNo);
		close(conn);
		return at;
		
	}
	
	/* 4-1. petlog 썸네일 리스트 조회 */
	public ArrayList<Petlog> selectThumbnailList() {
		Connection conn = getConnection();
		ArrayList<Petlog> list = new PetlogDao().selectThumbnailList(conn);
		
		close(conn);
		return list;
	}
	
	
	/* 4-2. petlog 첨부파일 리스트 조회 */
	public ArrayList<Attachment> selectAttachmentList(int petlogNo) {
		Connection conn = getConnection();
		ArrayList<Attachment> list = new PetlogDao().selectAttachmentList(conn, petlogNo);
		close(conn);
		return list;
	}
	

}
