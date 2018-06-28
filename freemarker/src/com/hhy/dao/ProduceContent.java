package com.hhy.dao;
import java.util.*;
import com.hhy.dao.Produce;

public class ProduceContent {
	private String labelImageUrl;
	private String labelTitle;
	private ArrayList<Produce> produces;
	
	public String getLabelImageUrl() {
		return labelImageUrl;
	}
	public void setLabelImageUrl(String labelImageUrl) {
		this.labelImageUrl = labelImageUrl;
	}
	public String getLabelTitle() {
		return labelTitle;
	}
	public void setLabelTitle(String labelTitle) {
		this.labelTitle = labelTitle;
	}
	public ArrayList<Produce> getProduces() {
		return produces;
	}
	public void setProduces(ArrayList<Produce> produces) {
		this.produces = produces;
	};
	
	
}
