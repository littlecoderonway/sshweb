package com.generatefile;

public abstract class ClassFileTemplate {
	protected StringBuffer packageSection = new StringBuffer();
	protected StringBuffer importSection = new StringBuffer();
	protected StringBuffer classBeginSection = new StringBuffer();
	protected StringBuffer fieldSection = new StringBuffer();
	protected StringBuffer methodsection = new StringBuffer();
	protected StringBuffer classEndSection = new StringBuffer();
}
