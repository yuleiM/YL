package com.yl.biz.impl;

import java.util.List;

import com.yl.biz.MealSeriesBiz;
import com.yl.dao.MealSeriesDAO;

public class MealSeriesBizImpl implements MealSeriesBiz {

	MealSeriesDAO mealSeriesDAO;
	
	public void setMealSeriesDAO(MealSeriesDAO mealSeriesDAO) {
		this.mealSeriesDAO = mealSeriesDAO;
	}

	@Override
	public List getMealSeries() {
		return mealSeriesDAO.getMealSeries();
	}

}
