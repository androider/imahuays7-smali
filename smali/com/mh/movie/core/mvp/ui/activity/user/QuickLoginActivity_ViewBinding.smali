.class public Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "QuickLoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    .line 51
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->tv_country:I

    const-string v1, "field \'tvCountry\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    sget v1, Lcom/mh/movie/core/R$id;->tv_country:I

    const-string v2, "field \'tvCountry\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountry:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->b:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcom/mh/movie/core/R$id;->tv_country_num:I

    const-string v1, "field \'tvCountryNum\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    sget v1, Lcom/mh/movie/core/R$id;->tv_country_num:I

    const-string v2, "field \'tvCountryNum\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountryNum:Landroid/widget/TextView;

    .line 63
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->c:Landroid/view/View;

    .line 64
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/mh/movie/core/R$id;->et_phone_num:I

    const-string v1, "field \'etPhoneNum\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 71
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    const-string v1, "field \'ibClearAll\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    sget v1, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    const-string v2, "field \'ibClearAll\'"

    const-class v3, Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearAll:Landroid/widget/ImageButton;

    .line 73
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->d:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Lcom/mh/movie/core/R$id;->et_psw:I

    const-string v1, "field \'etPsw\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPsw:Landroid/widget/EditText;

    .line 81
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v1, "field \'tvCountdown\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 82
    sget v1, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v2, "field \'tvCountdown\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountdown:Landroid/widget/TextView;

    .line 83
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->e:Landroid/view/View;

    .line 84
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v0, Lcom/mh/movie/core/R$id;->tv_login:I

    const-string v1, "field \'tvLogin\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    sget v1, Lcom/mh/movie/core/R$id;->tv_login:I

    const-string v2, "field \'tvLogin\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvLogin:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->f:Landroid/view/View;

    .line 93
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget v0, Lcom/mh/movie/core/R$id;->tv_psw_login:I

    const-string v1, "field \'tvPswLogin\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 100
    sget v1, Lcom/mh/movie/core/R$id;->tv_psw_login:I

    const-string v2, "field \'tvPswLogin\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvPswLogin:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->g:Landroid/view/View;

    .line 102
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget v0, Lcom/mh/movie/core/R$id;->et_verify_code:I

    const-string v1, "field \'etVerifyCode\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 109
    sget v0, Lcom/mh/movie/core/R$id;->ll_quick_login:I

    const-string v1, "field \'llQuickLogin\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llQuickLogin:Landroid/widget/LinearLayout;

    .line 110
    sget v0, Lcom/mh/movie/core/R$id;->ll_password_login:I

    const-string v1, "field \'llPasswordLogin\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llPasswordLogin:Landroid/widget/LinearLayout;

    .line 111
    sget v0, Lcom/mh/movie/core/R$id;->ib_eye:I

    const-string v1, "field \'ibEye\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibEye:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/mh/movie/core/R$id;->tv_forget_psw:I

    const-string v1, "field \'tvForgetPsw\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 113
    sget v1, Lcom/mh/movie/core/R$id;->tv_forget_psw:I

    const-string v2, "field \'tvForgetPsw\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 114
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->h:Landroid/view/View;

    .line 115
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_code:I

    const-string v1, "field \'ibClearCode\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 122
    sget v1, Lcom/mh/movie/core/R$id;->ib_clear_code:I

    const-string v2, "field \'ibClearCode\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearCode:Landroid/widget/ImageView;

    .line 123
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->i:Landroid/view/View;

    .line 124
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    const-string v1, "field \'ibClearPsw\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 131
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    const-string v1, "field \'ibClearPsw\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearPsw:Landroid/widget/ImageView;

    .line 132
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->j:Landroid/view/View;

    .line 133
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding$9;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    .line 148
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 149
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountry:Landroid/widget/TextView;

    .line 150
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountryNum:Landroid/widget/TextView;

    .line 151
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    .line 152
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearAll:Landroid/widget/ImageButton;

    .line 153
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPsw:Landroid/widget/EditText;

    .line 154
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountdown:Landroid/widget/TextView;

    .line 155
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvLogin:Landroid/widget/TextView;

    .line 156
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvPswLogin:Landroid/widget/TextView;

    .line 157
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 158
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llQuickLogin:Landroid/widget/LinearLayout;

    .line 159
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llPasswordLogin:Landroid/widget/LinearLayout;

    .line 160
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibEye:Landroid/widget/ImageView;

    .line 161
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvForgetPsw:Landroid/widget/TextView;

    .line 162
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearCode:Landroid/widget/ImageView;

    .line 163
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearPsw:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->b:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->c:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->d:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->e:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->f:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->g:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->h:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->i:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity_ViewBinding;->j:Landroid/view/View;

    return-void
.end method
