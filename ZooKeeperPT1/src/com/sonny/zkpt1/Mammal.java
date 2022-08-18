package com.sonny.zkpt1;

public class Mammal {
	
	
	private int energyLevel;

	public Mammal() {
		this.energyLevel = 100;
	}
	
	
//	******** GETTTER AND SETTTER  ********
	public int displayEnergy() {
		return energyLevel;
	}
	
	
	public void setEnergyLevel(int energyLevel) {
		this.energyLevel = energyLevel;
		
	}
	
}
