/* pageNum과 amount 값을 전달하는 용도의 클래스 */
package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	// 생성시 기본값을 1페이지와 보여줄 페이지 갯수 10으로 지정
	public Criteria() {
		this(1,10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
