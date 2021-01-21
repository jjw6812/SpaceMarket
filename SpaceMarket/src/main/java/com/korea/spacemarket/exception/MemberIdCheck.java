package com.korea.spacemarket.exception;

public class MemberIdCheck extends RuntimeException{
	public MemberIdCheck(String msg) {
		super(msg);
	}
	public MemberIdCheck(String msg, Throwable e) {
		super(msg, e);
	}
}
