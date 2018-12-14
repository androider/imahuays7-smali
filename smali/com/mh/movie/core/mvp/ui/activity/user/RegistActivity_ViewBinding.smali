.class public Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RegistActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

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


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    .line 57
    sget v0, Lcom/mh/movie/core/R$id;->cb_agreement:I

    const-string v1, "field \'cbAgreement\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->cbAgreement:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/mh/movie/core/R$id;->fl_agreement:I

    const-string v1, "field \'flAgreement\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    sget v1, Lcom/mh/movie/core/R$id;->fl_agreement:I

    const-string v2, "field \'flAgreement\'"

    const-class v3, Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->flAgreement:Landroid/widget/FrameLayout;

    .line 60
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->b:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 68
    sget v0, Lcom/mh/movie/core/R$id;->tv_country:I

    const-string v1, "field \'tvCountry\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    sget v1, Lcom/mh/movie/core/R$id;->tv_country:I

    const-string v2, "field \'tvCountry\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountry:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->c:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v0, Lcom/mh/movie/core/R$id;->tv_country_num:I

    const-string v1, "field \'tvCountryNum\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    sget v1, Lcom/mh/movie/core/R$id;->tv_country_num:I

    const-string v2, "field \'tvCountryNum\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountryNum:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->d:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcom/mh/movie/core/R$id;->et_phone_num:I

    const-string v1, "field \'etPhoneNum\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 87
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    const-string v1, "field \'ibClearAll\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 88
    sget v1, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    const-string v2, "field \'ibClearAll\'"

    const-class v3, Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearAll:Landroid/widget/ImageButton;

    .line 89
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->e:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lcom/mh/movie/core/R$id;->et_invitation_code:I

    const-string v1, "field \'etInvitationCode\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etInvitationCode:Landroid/widget/EditText;

    .line 97
    sget v0, Lcom/mh/movie/core/R$id;->rl_invitation_code:I

    const-string v1, "field \'rlInvitationCode\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->rlInvitationCode:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    .line 98
    sget v0, Lcom/mh/movie/core/R$id;->tv_login:I

    const-string v1, "field \'tvLogin\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 99
    sget v1, Lcom/mh/movie/core/R$id;->tv_login:I

    const-string v2, "field \'tvLogin\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvLogin:Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->f:Landroid/view/View;

    .line 101
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v0, Lcom/mh/movie/core/R$id;->tv_protocol:I

    const-string v1, "field \'tvProtocol\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 108
    sget v1, Lcom/mh/movie/core/R$id;->tv_protocol:I

    const-string v2, "field \'tvProtocol\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvProtocol:Landroid/widget/TextView;

    .line 109
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->g:Landroid/view/View;

    .line 110
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lcom/mh/movie/core/R$id;->tv_phoine_num:I

    const-string v1, "field \'tvPhoineNum\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvPhoineNum:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/mh/movie/core/R$id;->et_verify_code:I

    const-string v1, "field \'etVerifyCode\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 118
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v1, "field \'tvCountdown\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    sget v1, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v2, "field \'tvCountdown\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    .line 120
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->h:Landroid/view/View;

    .line 121
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$9;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget v0, Lcom/mh/movie/core/R$id;->et_psw:I

    const-string v1, "field \'etPsw\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    .line 128
    sget v0, Lcom/mh/movie/core/R$id;->tv_regist:I

    const-string v1, "field \'tvRegist\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 129
    sget v1, Lcom/mh/movie/core/R$id;->tv_regist:I

    const-string v2, "field \'tvRegist\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvRegist:Landroid/widget/TextView;

    .line 130
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->i:Landroid/view/View;

    .line 131
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$10;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget v0, Lcom/mh/movie/core/R$id;->details:I

    const-string v1, "field \'details\'"

    const-class v2, Landroid/widget/ViewFlipper;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    .line 138
    sget v0, Lcom/mh/movie/core/R$id;->ib_eye:I

    const-string v1, "field \'ibEye\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibEye:Landroid/widget/ImageView;

    .line 139
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_code:I

    const-string v1, "field \'ibClearCode\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 140
    sget v1, Lcom/mh/movie/core/R$id;->ib_clear_code:I

    const-string v2, "field \'ibClearCode\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode:Landroid/widget/ImageView;

    .line 141
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->j:Landroid/view/View;

    .line 142
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$11;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_code2:I

    const-string v1, "field \'ibClearCode2\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 149
    sget v1, Lcom/mh/movie/core/R$id;->ib_clear_code2:I

    const-string v2, "field \'ibClearCode2\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode2:Landroid/widget/ImageView;

    .line 150
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->k:Landroid/view/View;

    .line 151
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    const-string v1, "field \'ibClearPsw\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 158
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    const-string v1, "field \'ibClearPsw\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearPsw:Landroid/widget/ImageView;

    .line 159
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->l:Landroid/view/View;

    .line 160
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 173
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    .line 175
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->cbAgreement:Landroid/widget/ImageView;

    .line 176
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->flAgreement:Landroid/widget/FrameLayout;

    .line 177
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 178
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountry:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountryNum:Landroid/widget/TextView;

    .line 180
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 181
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearAll:Landroid/widget/ImageButton;

    .line 182
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etInvitationCode:Landroid/widget/EditText;

    .line 183
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->rlInvitationCode:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    .line 184
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvLogin:Landroid/widget/TextView;

    .line 185
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvProtocol:Landroid/widget/TextView;

    .line 186
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvPhoineNum:Landroid/widget/TextView;

    .line 187
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 188
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    .line 189
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    .line 190
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvRegist:Landroid/widget/TextView;

    .line 191
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    .line 192
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibEye:Landroid/widget/ImageView;

    .line 193
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode:Landroid/widget/ImageView;

    .line 194
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode2:Landroid/widget/ImageView;

    .line 195
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearPsw:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->b:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->c:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->d:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->e:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->f:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->g:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->h:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->i:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->j:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->k:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity_ViewBinding;->l:Landroid/view/View;

    return-void
.end method
