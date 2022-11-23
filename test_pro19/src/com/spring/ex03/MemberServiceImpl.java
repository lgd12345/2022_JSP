package com.spring.ex03;

public class MemberServiceImpl implements MemberService {
	private MemberDAO memberDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public void listMembers() {
		System.out.println("MemberServiseImepl의 listMembers() 메서드");
		System.out.println("+++++++++++++++++++++++++++++++++++");
		memberDAO.listMembers();
	}
}
