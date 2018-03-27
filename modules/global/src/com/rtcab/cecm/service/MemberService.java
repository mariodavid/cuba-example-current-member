package com.rtcab.cecm.service;


import com.rtcab.cecm.entity.Member;

public interface MemberService {
    String NAME = "cecm_MemberService";


    Member getCurrentMember();
}