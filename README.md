# cuba-example-current-member
This example shows how to open a screen for the currently logged in member


In the domain model there is an Entity "Member", which represents the business representation of a user of a system.
Then there is the reference to the sec$User entity from CUBA.


![Domain model](https://github.com/mariodavid/cuba-example-current-member/blob/master/img/domain-model.png)


## Screenshots

#### Admin: member browse screen
![1-admin-member-browse](https://github.com/mariodavid/cuba-example-current-member/blob/master/img/1-admin-member-browse.png)

#### User: current member button
![2-user-current-member-button](https://github.com/mariodavid/cuba-example-current-member/blob/master/img/2-user-current-member-button.png)

#### User: current member screen
![3-user-current-member-screen](https://github.com/mariodavid/cuba-example-current-member/blob/master/img/3-user-current-member-screen.png)


## Custom screen opener

The current member button runs the [CurrentMemberOpener](https://github.com/mariodavid/cuba-example-current-member/blob/master/modules/web/src/com/rtcab/cecm/web/CurrentMemberOpener.java) class.
It itself calls  [MemberService.getCurrentMember()](https://github.com/mariodavid/cuba-example-current-member/blob/master/modules/global/src/com/rtcab/cecm/service/MemberService.java#L10) which
loads the current member from the currently logged in user. With this information the normal Member editor will be opened.
