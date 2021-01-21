package com.korea.spacemarket.exception;

public class TopCategoryRegistFailException extends RuntimeException{
	public TopCategoryRegistFailException(String msg) {
		super(msg);
	}
	
	public TopCategoryRegistFailException(String msg, Throwable e) {
		super(msg, e);
	}
}
