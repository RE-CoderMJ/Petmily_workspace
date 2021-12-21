package com.pm.petLog.model.service;

import static com.pm.common.JDBCTemplate.close;
import static com.pm.common.JDBCTemplate.commit;
import static com.pm.common.JDBCTemplate.getConnection;
import static com.pm.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.common.model.vo.Attachment;
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
	
	public ArrayList<PetLog> selectPetLogList(){
		Connection conn = getConnection();
		ArrayList<PetLog> list = new PetLogDao().selectPetLogList(conn);
		close(conn);
		return list;
	}
	
	public PetsRoom selectPetsRoom() {
		
	}
}
