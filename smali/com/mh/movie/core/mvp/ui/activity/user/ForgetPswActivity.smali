.class public Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "ForgetPswActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/s$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/s$b;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$a;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

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

.field private h:Landroid/os/CountDownTimer;

.field ibClearAll:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0110
    .end annotation
.end field

.field ibClearPsw:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0113
    .end annotation
.end field

.field ibEye:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0114
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvCommit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03b9
    .end annotation
.end field

.field tvCountdown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03bd
    .end annotation
.end field

.field tvPhoneNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c041f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 58
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->c:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$a;

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->d:Ljava/lang/String;

    const-string v0, ""

    .line 81
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->f:Z

    .line 85
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    sget p1, Lcom/mh/movie/core/R$layout;->activity_forget_psw:I

    return p1
.end method

.method public a(J)V
    .locals 1

    .line 266
    sput-wide p1, Lcom/mh/movie/core/mvp/ui/b;->D:J

    .line 267
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->l:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 269
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string p2, "msg"

    const-string v0, "forget2MyFragment"

    invoke-virtual {p1, p2, v0}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->finish()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    invoke-static {}, Lcom/mh/movie/core/a/a/ae;->a()Lcom/mh/movie/core/a/a/ae$a;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/ae$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/c/d;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/c/d;-><init>(Lcom/mh/movie/core/mvp/a/s$b;)V

    .line 92
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/mh/movie/core/mvp/c/d;)Lcom/mh/movie/core/a/a/ae$a;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/ae$a;->a()Lcom/mh/movie/core/a/a/cc;

    move-result-object p1

    .line 94
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cc;->a(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "phoneNum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "countryNum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->d:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvPhoneNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->phoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e()V

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etVerifyCode:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibEye:Landroid/widget/ImageView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public c()V
    .locals 7

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 278
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$4;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;JJ)V

    .line 289
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->h:Landroid/os/CountDownTimer;

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 208
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvCommit:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 302
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 306
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;-><init>()V

    .line 307
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setAccount(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 308
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setType(I)V

    .line 309
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setCountry(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 318
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    .line 322
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u5c0f\u4e8e6\u4f4d\u5b57\u7b26"

    .line 326
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 330
    :cond_2
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setAccount(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCaptcha(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setPassword(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCountry(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->j()Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;

    move-result-object v1

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/LoadingDialog;->a(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c03bd,
            0x7f0c03b9,
            0x7f0c0110,
            0x7f0c0113
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 234
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    if-ne p1, v0, :cond_1

    .line 239
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etVerifyCode:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    if-ne p1, v0, :cond_2

    .line 243
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->f()V

    goto :goto_0

    .line 259
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->tv_commit:I

    if-ne p1, v0, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->g()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 227
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
