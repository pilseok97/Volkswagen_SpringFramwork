package org.zerock.domain;

import lombok.Data;

@Data
public class ReservationVO {
	// 필드명
	private int reservation_num;
	private String reservation_date;
	private String car_ReleaseDate;
	private String car_name;
	private String car_img;
	private String car_color;
	private String car_wheel;
	private String car_seat;
	private String car_price;
	private int user_num;
	private String user_name;
}
