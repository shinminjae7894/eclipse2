package mybean;

import java.util.ArrayList;

public class ParkingBean {
	private ArrayList<CarDto> carList = new ArrayList<CarDto>();
	//generic으로 설정
	
	public void setEnter(String plate) {
		carList.add(new CarDto(plate, System.currentTimeMillis()));
	}
	
	public void setExit(String plate) {
		for(int i=0; i<carList.size(); i++) {
			if(plate.equals(carList.get(i).getPlateNumber())) {
				carList.remove(i);
				break;
			}
		}
	}
	
	public int getCounter() {
		return carList.size();
	}
	
	public ArrayList<CarDto> getCarInfo(){
		return carList;
	}//index property : get property 사용 불가
}
