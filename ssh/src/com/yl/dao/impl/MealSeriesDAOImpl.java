package com.yl.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.yl.entity.Meal;
import com.yl.entity.Mealseries;
import com.yl.dao.MealSeriesDAO;

public class MealSeriesDAOImpl implements MealSeriesDAO {

    SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List getMealSeries() {
		Session session=sessionFactory.getCurrentSession();
		Criteria c=session.createCriteria(Mealseries.class);
		return c.list();
	}

}
