package model;

public class StationDTO {

	private int stationId;
	private int stationName;
	private float X;
	private float Y;
	
	public StationDTO(int stationName) {
		super();
		this.stationName = stationName;
	}
	public StationDTO(float x, float y) {
		super();
		X = x;
		Y = y;
	}

	public int getStationId() {
		return stationId;
	}
	public void setStationId(int stationId) {
		this.stationId = stationId;
	}
	public int getStationName() {
		return stationName;
	}
	public void setStationName(int stationName) {
		this.stationName = stationName;
	}

	public float getX() {
		return X;
	}
	public void setX(float X) {
		this.X = X;
	}
	public float getY() {
		return Y;
	}
	public void setY(float Y) {
		this.Y = Y;

	}
}
