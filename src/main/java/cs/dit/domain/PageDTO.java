package cs.dit.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	private int startPage; //한 화면의 첫 페이지 번호
	private int endPage;  //전체 게시글의 마지막 페이지 번호
	private boolean prev, next; //페이지네이션 링크에 표시되는 이전, 다음 링크 표시
	
	private int total; //전체 게시글의 갯수
	private Criteria cri; //pageNum, amount을 설정한 객체
	
	public PageDTO(Criteria cri, int total) { //필드가 있는 생성자
		this.cri = cri;
		this.total = total;
		
		int numOfPages = 5; //한 화면에 보여지는 페이지의 수
		
		//마지막 페이지 계산 - 정밀한 계산은 아니나 endPage 계산을 위해 미리 계산
		this.endPage = (int)Math.ceil((float)cri.getPageNum()/(float)numOfPages)*numOfPages;
		//첫 페이지 계산
		this.startPage = this.endPage - (numOfPages-1);
		
		//전체 레코드의 수로 계산한 실제 마지막 페이지 계산
		int realEnd = (int)Math.ceil((float)total/(float)cri.getAmount());
		//이전에 계산한 마지막 페이지가 실제 마지막 페이지보다 크면 실제 페이지가 적용되도록 마지막페이지 설정
		this.endPage = this.endPage> realEnd? realEnd:this.endPage;
		
		//첫 페이지가 1보다 크면, 즉 (한 화면의 페이지 수가 5일 경우) 6, 11, 16... 이 되면 prev가 표시
		this.prev = this.startPage > 1;
		//next 링크는 realEnd가 끝번호 보다 큰경우에만 존재
		this.next = this.endPage<realEnd;	
	}
}