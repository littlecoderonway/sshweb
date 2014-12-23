package com.test;
import java.util.*;
import com.opensymphony.xwork2.*;
import com.bibernatebeans.*;
public class Student extends ActionSupport { 
private int studentId;
private java.lang.String studentName;
private java.util.Date studentBirthday;
public void setStudentId ( int studentId ){
 this.studentId = studentId;
}
public void setStudentName ( java.lang.String studentName ){
 this.studentName = studentName;
}
public void setStudentBirthday ( java.util.Date studentBirthday ){
 this.studentBirthday = studentBirthday;
}
}