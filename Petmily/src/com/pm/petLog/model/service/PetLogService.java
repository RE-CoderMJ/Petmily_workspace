package com.pm.petLog.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.ask.model.dao.AskDao;
import com.pm.common.model.vo.Attachment;
import com.pm.common.model.vo.PageInfo;
import com.pm.common.model.vo.Reply;
import com.pm.petLog.model.dao.PetLogDao;
import com.pm.petLog.model.vo.PetLog;
import com.pm.petLog.model.vo.PetsRoom;
public class PetLogService {

	public int enrollPetLog(PetLog pl, ArrayList<Attachment> list) {
		Connection conn = getConnection();
		
		int result1 = new PetLogDao().insertPetLog(conn, pl);
		int result2 = new PetLogDao().insertAttachmentList(conn, list);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public ArrayList<PetLog> selectPetLogList(int memNo, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<PetLog> list = new PetLogDao().selectPetLogList(conn, memNo, pi);
		close(conn);
		return list;
	}
	
	public PetsRoom selectPetsRoom(int memNo) {
		Connection conn = getConnection();
		PetsRoom pr = new PetLogDao().selectPetsRoom(conn, memNo);
		close(conn);
		return pr;
	}
	
	public PetLog selectPetLog(int petLogNo) {
		Connection conn = getConnection();
		PetLog pl = new PetLogDao().selectPetLog(conn, petLogNo);
		close(conn);
		return pl;
	}
	
	public ArrayList<Attachment> selectAttachmentList(int petLogNo){
		Connection conn = getConnection();
		ArrayList<Attachment> list = new PetLogDao().selectAttachmentList(conn, petLogNo);
		close(conn);
		return list;
	}
	
	public int deletePetLog(int petLogNo) {
		Connection conn = getConnection();
		int result = new PetLogDao().deletePetLog(conn, petLogNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	public int updatePetLog(PetLog pl, ArrayList<Attachment> list) {
		
		Connection conn = getConnection();
		
		int result1 = new PetLogDao().updatePetLog(conn, pl);
		
		int result2 = 1;
		if(!list.isEmpty()) {
			for(Attachment att: list) {
				if(att.getAttachmentNo()!= 0) {
					result2 = new PetLogDao().updateAttachment(conn, att);
				}else {
					result2 = new PetLogDao().insertNewAttachment(conn, att);
				}
				
				if(!(result2>0)) {
					result2 = 0;
					break;
				}
			}
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
	
		close(conn);
		
		return result1*result2;
	}
	
	public int updatePetsRoom(PetsRoom pr, Attachment att) {
		Connection conn = getConnection();
		
		int result1 = new PetLogDao().updatePetsRoom(conn, pr);
		
		int result2 = 1;
		if(att != null) {
			if(att.getAttachmentNo() != 0) {
				result2 = new PetLogDao().updateAttachment(conn, att);
			}else {
				result2 = new PetLogDao().insertPfNewAttachment(conn, att);
			}
		}
		
		if(result1>0 && result2 >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
	
	public Attachment selectAttachment(int memNo) {
		Connection conn = getConnection();
		Attachment att = new PetLogDao().selectAttachment(conn, memNo);
		close(conn);
		return att;
	}

	public ArrayList<PetsRoom> selectPetsRoomList() {
		Connection conn = getConnection();
		ArrayList<PetsRoom> list = new PetLogDao().selectPetsRoomList(conn);
		close(conn);
		return list;
	}

	public ArrayList<PetLog> selectAllPetLogList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<PetLog> list = new PetLogDao().selectAllPetLogList(conn, pi);
		close(conn);
		return list;
	}

	public ArrayList<Attachment> selectAllAttachmentList() {
		Connection conn = getConnection();
		ArrayList<Attachment> list = new PetLogDao().selectAllAttachmentList(conn);
		close(conn);
		return list;
	}

	public int selectAllPetLogCount() {
		Connection conn = getConnection();
		int listCount = new PetLogDao().selectAllPetLogCount(conn);
		close(conn);
		return listCount;
	}

	public int selectPetLogCount(int memNo) {
		Connection conn = getConnection();
		int listCount = new PetLogDao().selectPetLogCount(conn, memNo);
		close(conn);
		return listCount;
	}

	public int insertReply(Reply r) {
		Connection conn = getConnection();
		int result = new PetLogDao().insertReply(conn, r);
		
		if(result > 0) {
			commit(conn);
		}else{
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

	public int selectReplyCount(int pno) {
		Connection conn = getConnection();
		int replyCount = new PetLogDao().selectReplyCount(conn, pno);
		close(conn);
		return replyCount;
	}

	public ArrayList<Reply> selectReplyList(int pno) {
		Connection conn = getConnection();
		ArrayList<Reply> list = new PetLogDao().selectReplyList(conn, pno);
		close(conn);
		return list;
	}
	
}
