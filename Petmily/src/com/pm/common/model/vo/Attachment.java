package com.pm.common.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int attachmentNo;
	private String originName;
	private String changeName;
	private String filePath;
	private int refLevel; // 게시판 번호 궁금해요:1, 중고거래:2, 찾고있어요:3
	private int refNo; // 글번호
	private Date uploadDate;
	private String status;
}
