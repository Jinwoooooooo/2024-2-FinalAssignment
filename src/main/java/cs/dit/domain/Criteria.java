package cs.dit.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Criteria {

	private int pageNum;
	private int amount;
	
	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public int getPageStart() {
		
		return (this.pageNum - 1) * this.amount;
	}
	
}