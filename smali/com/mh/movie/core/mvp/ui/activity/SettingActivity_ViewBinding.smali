.class public Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    .line 60
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 61
    sget v0, Lcom/mh/movie/core/R$id;->iv_setting_header:I

    const-string v1, "field \'ivSettingHeader\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    sget v1, Lcom/mh/movie/core/R$id;->iv_setting_header:I

    const-string v2, "field \'ivSettingHeader\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->ivSettingHeader:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 64
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_header:I

    const-string v1, "field \'tvSettingHeader\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingHeader:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_name:I

    const-string v1, "field \'tvSettingName\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    sget v1, Lcom/mh/movie/core/R$id;->tv_setting_name:I

    const-string v2, "field \'tvSettingName\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingName:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_gender:I

    const-string v1, "field \'tvSettingGender\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingGender:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_version:I

    const-string v1, "field \'tvSettingVersion\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingVersion:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_update:I

    const-string v1, "field \'tvSettingUpdate\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    sget v1, Lcom/mh/movie/core/R$id;->tv_setting_update:I

    const-string v2, "field \'tvSettingUpdate\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingUpdate:Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 85
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_cache:I

    const-string v1, "field \'tvSettingCache\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 92
    sget v1, Lcom/mh/movie/core/R$id;->tv_setting_cache:I

    const-string v2, "field \'tvSettingCache\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingCache:Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 94
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$9;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v0, Lcom/mh/movie/core/R$id;->tv_setting_loginout:I

    const-string v1, "field \'tvSettingLoginOut\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 101
    sget v1, Lcom/mh/movie/core/R$id;->tv_setting_loginout:I

    const-string v2, "field \'tvSettingLoginOut\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingLoginOut:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 103
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$10;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v0, Lcom/mh/movie/core/R$id;->tv_down_num:I

    const-string v1, "field \'tvDownNum\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 110
    sget v1, Lcom/mh/movie/core/R$id;->tv_down_num:I

    const-string v2, "field \'tvDownNum\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvDownNum:Landroid/widget/TextView;

    .line 111
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 112
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$11;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v0, Lcom/mh/movie/core/R$id;->tv_friend_invite:I

    const-string v1, "field \'tvFriendInvite\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    sget v1, Lcom/mh/movie/core/R$id;->tv_friend_invite:I

    const-string v2, "field \'tvFriendInvite\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvFriendInvite:Landroid/widget/LinearLayout;

    .line 120
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 121
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$12;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget v0, Lcom/mh/movie/core/R$id;->sb_auto_clear:I

    const-string v1, "field \'sbAutoClear\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 128
    sget v1, Lcom/mh/movie/core/R$id;->sb_auto_clear:I

    const-string v2, "field \'sbAutoClear\'"

    const-class v3, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbAutoClear:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 129
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 130
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$13;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget v0, Lcom/mh/movie/core/R$id;->sb_tv_row:I

    const-string v1, "field \'sbTvRow\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 137
    sget v1, Lcom/mh/movie/core/R$id;->sb_tv_row:I

    const-string v2, "field \'sbTvRow\'"

    const-class v3, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbTvRow:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 138
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->j:Landroid/view/View;

    .line 139
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$14;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/mh/movie/core/R$id;->sb_mobile_down:I

    const-string v1, "field \'sbMobileDown\'"

    const-class v2, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 146
    sget v0, Lcom/mh/movie/core/R$id;->ll_setting_account:I

    const-string v1, "field \'llSettingAccount\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 147
    sget v1, Lcom/mh/movie/core/R$id;->ll_setting_account:I

    const-string v2, "field \'llSettingAccount\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->llSettingAccount:Landroid/widget/LinearLayout;

    .line 148
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->k:Landroid/view/View;

    .line 149
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v0, Lcom/mh/movie/core/R$id;->sb_jump_head:I

    const-string v1, "field \'sbJumpHead\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 156
    sget v1, Lcom/mh/movie/core/R$id;->sb_jump_head:I

    const-string v2, "field \'sbJumpHead\'"

    const-class v3, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbJumpHead:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 157
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->l:Landroid/view/View;

    .line 158
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget v0, Lcom/mh/movie/core/R$id;->sb_play_hand:I

    const-string v1, "field \'sbPlayHand\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 165
    sget v1, Lcom/mh/movie/core/R$id;->sb_play_hand:I

    const-string v2, "field \'sbPlayHand\'"

    const-class v3, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbPlayHand:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 166
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->m:Landroid/view/View;

    .line 167
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget v0, Lcom/mh/movie/core/R$id;->tv_gender:I

    const-string v1, "field \'tvGender\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvGender:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/mh/movie/core/R$id;->rl_setting_header:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->n:Landroid/view/View;

    .line 176
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget v0, Lcom/mh/movie/core/R$id;->ll_setting_gender:I

    const-string v1, "method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 183
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->o:Landroid/view/View;

    .line 184
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 197
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    .line 199
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 200
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->ivSettingHeader:Landroid/widget/ImageView;

    .line 201
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingHeader:Landroid/widget/TextView;

    .line 202
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingName:Landroid/widget/TextView;

    .line 203
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingGender:Landroid/widget/TextView;

    .line 204
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingVersion:Landroid/widget/TextView;

    .line 205
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingUpdate:Landroid/widget/TextView;

    .line 206
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingCache:Landroid/widget/TextView;

    .line 207
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvSettingLoginOut:Landroid/widget/TextView;

    .line 208
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvDownNum:Landroid/widget/TextView;

    .line 209
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvFriendInvite:Landroid/widget/LinearLayout;

    .line 210
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbAutoClear:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 211
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbTvRow:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 212
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbMobileDown:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 213
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->llSettingAccount:Landroid/widget/LinearLayout;

    .line 214
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbJumpHead:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 215
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->sbPlayHand:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 216
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;->tvGender:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->j:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->k:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->l:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->m:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->n:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity_ViewBinding;->o:Landroid/view/View;

    return-void
.end method
