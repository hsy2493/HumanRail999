package htproject.t999.vo;

public class Train {
	  private int t_num;
	  private String t_type;
	  private String t_depart;
	  private String t_arrive;
	  private String t_dtime;
	  private String t_atime;
	  private String t_station;
	  private int t_price;

	public Train() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Train(int t_num, String t_type, String t_depart, String t_arrive, String t_dtime, String t_atime,
			String t_station, int t_price) {
		super();
		this.t_num = t_num;
		this.t_type = t_type;
		this.t_depart = t_depart;
		this.t_arrive = t_arrive;
		this.t_dtime = t_dtime;
		this.t_atime = t_atime;
		this.t_station = t_station;
		this.t_price = t_price;
	}
	public int getT_price() {
		return t_price;
	}
	public void setT_price(int t_price) {
		this.t_price = t_price;
	}
	public int getT_num() {
		return t_num;
	}
	public void setT_num(int t_num) {
		this.t_num = t_num;
	}
	public String getT_type() {
		return t_type;
	}
	public void setT_type(String t_type) {
		this.t_type = t_type;
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
	public String getT_station() {
		return t_station;
	}
	public void setT_station(String t_station) {
		this.t_station = t_station;
	}

}
