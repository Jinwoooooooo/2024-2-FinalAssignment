package cs.dit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private Long bno;
	private String title, content, writer;
	private Date regDate, updateDate;

}