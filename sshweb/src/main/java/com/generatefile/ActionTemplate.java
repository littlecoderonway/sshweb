package com.generatefile;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Field;

public class ActionTemplate extends ClassFileTemplate{
	
	private Class classz;
	private String location;
	private String packageName;
	private StringBuffer fileBuffer = new StringBuffer();
	private ClassDescriber cDes = new ClassDescriber();
	public ActionTemplate(Class classz,String location,String packageName){
		this.classz = classz;
		this.location = location;
		this.packageName = packageName;
		cDes.analizeClass(classz);
	}
	
	public void generatePackageSection(){
		packageSection.append("package ").append(packageName).append(";\n");
	}
	
	public void generateImportSection(){
		importSection.append("import java.util.*;\n");
		importSection.append("import com.opensymphony.xwork2.*;\n");
		//import bean
		importSection.append("import ").append(cDes.getPackageName()).append(".*;\n");
		// todo import logic
	}
	
	public void generateClassBeginSection(){
		classBeginSection.append("public class ").append(cDes.getClassName()).append(" extends ActionSupport { \n");
	}
	
	public void generateFieldSection(){
		for(Field f:cDes.getFiledList()){
			fieldSection.append("private ").append(f.getType().getName()).append(" ").append(f.getName()).append(";\n");
		}
	}
	
	public void generateMethodSection(){
		for(Field f:cDes.getFiledList()){
			generateSetMethod(f.getName(), f.getType().getName());
		}
	}
	
	public void generateSetMethod(String fieldName,String fieldType){
		methodsection.append("public void set").append(upcaseFirstLetter(fieldName)).append(" ( ")
			.append(fieldType).append(" ").append(fieldName).append(" ){\n")
			.append(" this.").append(fieldName).append(" = ").append(fieldName).append(";\n")
			.append("}\n");
	}
	
	public String upcaseFirstLetter(String word){
		return word.substring(0, 1).toUpperCase()+word.substring(1);
	}
	
	public void generateEndClassSection(){
		classEndSection.append("}");
	}
	
	public void generateFile(){
		generatePackageSection();
		generateImportSection();
		generateClassBeginSection();
		generateFieldSection();
		generateMethodSection();
		generateEndClassSection();
		
		File classFile = new File(location+"/"+cDes.getClassName()+".java");
		FileWriter bw = null;
		try {
			bw = new FileWriter(classFile);
			bw.write(packageSection.toString());
			bw.write(importSection.toString());
			bw.write(classBeginSection.toString());
			bw.write(fieldSection.toString());
			bw.write(methodsection.toString());
			bw.write(classEndSection.toString());
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				bw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}







