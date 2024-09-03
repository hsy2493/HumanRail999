package htproject.t999.vo;

import java.util.Date;

public class Ticket {
	  private String ticket_id;
	  private String m_id;
	  private String t_type;         
	  private int t_num;
	  private String s_number;
	  private Date depart_date;
	  private String t_dtime;
	  private String t_atime;
	  private String t_depart;
	  private String t_arrive;
	  private String boarding_num;
	public Ticket() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ticket(String ticket_id, String m_id, String t_type, int t_num, String s_number, Date depart_date,
			String t_dtime, String t_atime, String t_depart, String t_arrive, String boarding_num) {
		super();
		this.ticket_id = ticket_id;
		this.m_id = m_id;
		this.t_type = t_type;
		this.t_num = t_num;
		this.s_number = s_number;
		this.depart_date = depart_date;
		this.t_dtime = t_dtime;
		this.t_atime = t_atime;
		this.t_depart = t_depart;
		this.t_arrive = t_arrive;
		this.boarding_num = boarding_num;
	}
	public String getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(String ticket_id) {
		this.ticket_id = ticket_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getT_type() {
		return t_type;
	}
	public void setT_type(String t_type) {
		this.t_type = t_type;
	}
	public int getT_num() {
		return t_num;
	}
	public void setT_num(int t_num) {
		this.t_num = t_num;
	}
	public String getS_number() {
		return s_number;
	}
	public void setS_number(String s_number) {
		this.s_number = s_number;
	}
	public Date getDepart_date() {
		return depart_date;
	}
	public void setDepart_date(Date depart_date) {
		this.depart_date = depart_date;
	}
	public String getT_dtime() {
		return t_dtime;
	}
	public void setT_dtime(String t_dtime) {
		this.t_dtime = t_dtime;
	}
	public String getT_atime() {
		return t_atime;
	}
	public void setT_atime(String t_atime) {
		this.t_atime = t_atime;
	}
	public String getT_depart() {
		return t_depart;
	}
	public void setT_depart(String t_depart) {
		this.t_depart = t_depart;
	}
	public String getT_arrive() {
		return t_arrive;
	}
	public void setT_arrive(String t_arrive) {
		this.t_arrive = t_arrive;
	}
	public String getBoarding_num() {
		return boarding_num;
	}
	public void setBoarding_num(String boarding_num) {
		this.boarding_num = boarding_num;
	}

}
