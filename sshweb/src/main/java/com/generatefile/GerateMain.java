package com.generatefile;

import com.bibernatebeans.Student;

public class GerateMain {

	public static void main(String[] args) {
		ActionTemplate at = new ActionTemplate(Student.class,System.getProperty("user.dir"),"com.test");
		at.generateFile();
		//System.out.println(System.getProperty("user.home"));
		//System.out.println(System.getProperty("user.dir"));
	}

}
