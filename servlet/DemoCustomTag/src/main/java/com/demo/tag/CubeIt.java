package com.demo.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class CubeIt extends TagSupport {
	private int number;
	public void setNumber(int number) {
		this.number=number;
}
	public int doStartTag() throws JspException {
		JspWriter out=pageContext.getOut();
		try {
			out.println(number*number*number);
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("DoStartTag");
		return EVAL_BODY_AGAIN;
}
	@Override
	public int doEndTag() throws JspException {
		return super.doEndTag();
	}
}
