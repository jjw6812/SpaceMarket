package com.korea.spacemarket.model.member.repository;

import java.util.List;

import com.korea.spacemarket.model.domain.Member;

public interface MemberDAO {
	public List selectAll();
	public Member select(int member_id);
	public void insert(Member member);
	public void update(Member member);
	public void delete(int member_id);
	public Member login(Member member);
	public Member findId(Member member);
	public void findPassword(Member member);
	public String checkId(Member member);
}
