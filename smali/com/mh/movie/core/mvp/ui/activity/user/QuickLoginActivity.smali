.class public Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "QuickLoginActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/c/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/c/a$b;"
    }
.end annotation


# instance fields
.field c:I

.field d:I

.field e:Ljava/lang/String;

.field etPhoneNum:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c6
    .end annotation
.end field

.field etPsw:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c8
    .end annotation
.end field

.field etVerifyCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00cd
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:Z

.field private i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

.field ibClearAll:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0110
    .end annotation
.end field

.field ibClearCode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0111
    .end annotation
.end field

.field ibClearPsw:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0113
    .end annotation
.end field

.field ibEye:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0114
    .end annotation
.end field

.field private j:Landroid/os/CountDownTimer;

.field llPasswordLogin:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01f9
    .end annotation
.end field

.field llQuickLogin:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c020f
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvCountdown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03bd
    .end annotation
.end field

.field tvCountry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03be
    .end annotation
.end field

.field tvCountryNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03bf
    .end annotation
.end field

.field tvForgetPsw:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03db
    .end annotation
.end field

.field tvLogin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03f5
    .end annotation
.end field

.field tvPswLogin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c043d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 58
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    const/16 v0, 0xb

    .line 95
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->c:I

    const/16 v0, 0x56

    .line 96
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->d:I

    const-string v0, "CHINA"

    .line 97
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->f:Z

    .line 101
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g:Z

    .line 102
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->h:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    sget p1, Lcom/mh/movie/core/R$layout;->quick_login_layout:I

    return p1
.end method

.method public a(J)V
    .locals 1

    .line 476
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 479
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string p2, ""

    const-string v0, "login_success"

    invoke-virtual {p1, p2, v0}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->finish()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 116
    invoke-static {}, Lcom/mh/movie/core/a/a/c/a;->a()Lcom/mh/movie/core/a/a/c/a$a;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/c/a$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/c/a$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/c/a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/c/a;-><init>(Lcom/mh/movie/core/mvp/a/c/a$b;)V

    .line 118
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/c/a$a;->a(Lcom/mh/movie/core/a/b/c/a;)Lcom/mh/movie/core/a/a/c/a$a;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/c/a$a;->a()Lcom/mh/movie/core/a/a/c/d;

    move-result-object p1

    .line 120
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/c/d;->a(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;J)V
    .locals 0

    .line 491
    sget-object p2, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-static {p0, p2, p3}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 492
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getIsNewRegist()I

    move-result p1

    if-ne p1, p3, :cond_0

    .line 493
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string p2, ""

    const-string p3, "sign_up_success"

    invoke-virtual {p1, p2, p3}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string p2, ""

    const-string p3, "login_success"

    invoke-virtual {p1, p2, p3}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->finish()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountry:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountryNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->c:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 134
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->f()V

    .line 137
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g()V

    .line 138
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etVerifyCode:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPsw:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibEye:Landroid/widget/ImageView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 235
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$5;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 485
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 291
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 7

    .line 371
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->j:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 374
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$6;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;JJ)V

    .line 385
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->j:Landroid/os/CountDownTimer;

    return-void
.end method

.method public e()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llQuickLogin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llPasswordLogin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvPswLogin:Landroid/widget/TextView;

    const-string v1, "\u5bc6\u7801\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const-string v1, "\u5feb\u901f\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llQuickLogin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->llPasswordLogin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvPswLogin:Landroid/widget/TextView;

    const-string v1, "\u5feb\u901f\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const-string v1, "\u5bc6\u7801\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public forget2MyFragment(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "forget2MyFragment"
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->finish()V

    return-void
.end method

.method public g()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvLogin:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->h:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvLogin:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->f:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 398
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 403
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;-><init>()V

    .line 404
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setAccount(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 405
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setType(I)V

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setCountry(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;

    invoke-virtual {v2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 416
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 420
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 424
    :cond_1
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setPhone(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCaptcha(Ljava/lang/String;)V

    .line 427
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 430
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCode(Ljava/lang/String;)V

    .line 432
    :goto_0
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setModel(Ljava/lang/String;)V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCountry(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V

    return-void
.end method

.method public l()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 439
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 443
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 447
    :cond_1
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;-><init>()V

    .line 448
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setAccount(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setPassword(Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCountry(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->b(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V

    return-void
.end method

.method public m()V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u5148\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 458
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 462
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "phoneNum"

    .line 463
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "countryNum"

    .line 464
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountryNum:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 303
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "country"

    .line 306
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    .line 308
    aget-object p2, p1, p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->e:Ljava/lang/String;

    const/4 p2, 0x1

    .line 309
    aget-object p3, p1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->c:I

    const/4 p3, 0x0

    .line 310
    aget-object p1, p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->d:I

    .line 312
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountry:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->tvCountryNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->c:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v0, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0113,
            0x7f0c0111,
            0x7f0c03be,
            0x7f0c03bf,
            0x7f0c0110,
            0x7f0c03bd,
            0x7f0c03f5,
            0x7f0c043d,
            0x7f0c03db
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 327
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    if-ne p1, v0, :cond_0

    .line 329
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPsw:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 331
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_code:I

    if-ne p1, v0, :cond_1

    .line 333
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etVerifyCode:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 334
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_country:I

    if-ne p1, v0, :cond_2

    goto/16 :goto_1

    .line 335
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->tv_country_num:I

    if-ne p1, v0, :cond_3

    .line 337
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 340
    :cond_3
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    if-ne p1, v0, :cond_4

    .line 341
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 342
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->etPhoneNum:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    if-ne p1, v0, :cond_5

    .line 345
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->h()V

    goto :goto_1

    .line 346
    :cond_5
    sget v0, Lcom/mh/movie/core/R$id;->tv_login:I

    if-ne p1, v0, :cond_7

    .line 347
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    if-ne p1, v0, :cond_6

    .line 348
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->k()V

    goto :goto_1

    .line 350
    :cond_6
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->l()V

    goto :goto_1

    .line 352
    :cond_7
    sget v0, Lcom/mh/movie/core/R$id;->tv_psw_login:I

    if-ne p1, v0, :cond_9

    .line 353
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    if-ne p1, v0, :cond_8

    .line 354
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    goto :goto_0

    .line 358
    :cond_8
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->i:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$a;

    .line 362
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->f()V

    goto :goto_1

    .line 363
    :cond_9
    sget v0, Lcom/mh/movie/core/R$id;->tv_forget_psw:I

    if-ne p1, v0, :cond_a

    .line 364
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->m()V

    :cond_a
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 273
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->j:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
