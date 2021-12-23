package com.pm.shopping.model.dao;

import static com.pm.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.pm.boards.qna.model.dao.QnaDao;
import com.pm.boards.qna.model.vo.Qna;
import com.pm.common.model.vo.PageInfo;

public class ShoppingQnaDao {
	
	private Properties prop = new Properties();
	
	public ShoppingQnaDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(ShoppingQnaDao.class.getResource("/db/sql/shopping/shopping-qna-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
}
