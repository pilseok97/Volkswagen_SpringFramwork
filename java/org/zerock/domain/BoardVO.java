package org.zerock.domain;
/* 멤버변수명(=필드명)과 DB 컬럼명 맞춰줌 */
import java.util.Date;
import lombok.Data;

@Data
public class BoardVO {
	// 필드명
	private int seq;
	private String title;
	private String writer;
	private String pwd;
	private int secret;
	private String content;
	private Date regdate;
	private int count;
	private String cmt_name;
	private String cmt_content;
	private Date cmt_regdate;
}
