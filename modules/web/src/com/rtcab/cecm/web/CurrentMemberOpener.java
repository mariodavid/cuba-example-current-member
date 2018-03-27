package com.rtcab.cecm.web;

import com.haulmont.cuba.core.global.AppBeans;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.Frame;
import com.haulmont.cuba.gui.config.WindowConfig;
import com.haulmont.cuba.web.App;
import com.haulmont.cuba.web.WebWindowManager;
import com.rtcab.cecm.entity.Member;
import com.rtcab.cecm.service.MemberService;

public class CurrentMemberOpener implements Runnable {
    @Override
    public void run() {
        Member currentMember = findCurrentMember();

        if (currentMember != null) {
            openMemberEditor(currentMember);
        }
        else {
            showErrorNotification("No member found for the current user");
        }
    }

    private void showErrorNotification(String errorText) {
        WindowManager wm = getWindowManager();
        wm.showNotification(errorText, Frame.NotificationType.ERROR);
    }

    private void openMemberEditor(Member currentMember) {
        WindowConfig wc = getWindowConfig();
        WindowManager wm = getWindowManager();
        wm.openEditor(wc.getWindowInfo("cecm$Member.edit"), currentMember, WindowManager.OpenType.NEW_TAB);
    }

    private Member findCurrentMember() {
        MemberService memberService = getMemberService();
        return memberService.getCurrentMember();
    }

    private WindowConfig getWindowConfig() {
        return AppBeans.get(WindowConfig.NAME);
    }

    private MemberService getMemberService() {
        return AppBeans.get(MemberService.class);
    }

    private WebWindowManager getWindowManager() {
        return App.getInstance().getWindowManager();
    }
}
