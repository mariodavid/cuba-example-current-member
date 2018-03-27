package com.rtcab.cecm.service;

import com.haulmont.cuba.core.entity.Entity;
import com.haulmont.cuba.core.global.DataManager;
import com.haulmont.cuba.core.global.LoadContext;
import com.haulmont.cuba.core.global.UserSessionSource;
import com.rtcab.cecm.entity.Member;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service(MemberService.NAME)
public class MemberServiceBean implements MemberService {


    @Inject
    protected DataManager dataManager;

    @Inject
    protected UserSessionSource userSessionSource;

    @Override
    public Member getCurrentMember() {
        List<Member> allMembersForCurrentUser = dataManager.loadList(getCurrentMemberLoadContext());

        if (allMembersForCurrentUser.size() == 0) {
            return null;
        }
        else {
            return allMembersForCurrentUser.get(0);
        }

    }

    private LoadContext<Member> getCurrentMemberLoadContext() {
        LoadContext<Member> loadContext = LoadContext.create(Member.class);
        loadContext.setQuery(LoadContext.createQuery("select e from cecm$Member e where e.user.id = :currentUser")
                .setParameter("currentUser", userSessionSource.currentOrSubstitutedUserId()));
        return loadContext;
    }
}