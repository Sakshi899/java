package com.demo.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class HelloTag extends BodyTagSupport {
	@Override
	public int doStartTag() throws JspException {
		JspWriter out=pageContext.getOut();
		try {
			out.println("inside dostartTag");
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("DoStartTag");
		return EVAL_BODY_AGAIN;
	}
  
}
