package com.pm.boards.missing.modle.service;

import static com.pm.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.pm.boards.missing.modle.dao.MissingDao;
import com.pm.boards.missing.modle.vo.Missing;
import com.pm.common.model.vo.Attachment;

public class MissingService {
	
	public int enrollMissing(Missing mi, ArrayList<Attachment> list) {
		Connection conn = getConnection();
		
		int result1 = new MissingDao().insertMissing(conn, mi);
		int result2 = new MissingDao().insertAttachmentList(conn, list);
		
		if(result1>0 && result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
	}
}
