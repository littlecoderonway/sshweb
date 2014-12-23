package com.generatefile;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ClassDescriber {
	private String packageName;
	private List<Field> filedList = new ArrayList<Field>();
	private String className;
	
	public String getPackageName() {
		return packageName;
	}

	public List<Field> getFiledList() {
		return filedList;
	}

	public String getClassName() {
		return className;
	}

	public void analizeClass(Class classz){
		String fullClassName = classz.getName();
		this.packageName = classz.getPackage().getName();
		if(fullClassName.indexOf('.')!=-1){
			className = fullClassName.substring(fullClassName.lastIndexOf('.')+1);
		}else{
			className = fullClassName;
		}
		Field[] fields = classz.getDeclaredFields();
		for(Field f:fields){
			f.setAccessible(true);
			filedList.add(f);
		}
		//filedList = Arrays.asList(classz.getFields());
	}
}
