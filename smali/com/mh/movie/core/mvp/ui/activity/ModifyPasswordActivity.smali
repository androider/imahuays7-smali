.class public Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "ModifyPasswordActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/aa$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/aa$b;"
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroid/os/CountDownTimer;

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

.field mIbEye:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0114
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

.field tvModifyPassword:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0403
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

    .line 46
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->c:Z

    .line 63
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->c:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    sget p1, Lcom/mh/movie/core/R$layout;->activity_modify_password:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-static {}, Lcom/mh/movie/core/a/a/an;->a()Lcom/mh/movie/core/a/a/an$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/an$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/bu;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/bu;-><init>(Lcom/mh/movie/core/mvp/a/aa$b;)V

    .line 72
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/mh/movie/core/a/b/bu;)Lcom/mh/movie/core/a/a/an$a;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/an$a;->a()Lcom/mh/movie/core/a/a/cl;

    move-result-object p1

    .line 74
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cl;->a(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvPhoneNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+86"

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/TextEmptyutils;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->phoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->f()V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->mIbEye:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etVerifyCode:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvModifyPassword:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 229
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;-><init>()V

    .line 230
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setAccount(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 231
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setType(I)V

    .line 232
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setCountry(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 242
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    .line 246
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u5c0f\u4e8e6\u4f4d\u5b57\u7b26"

    .line 250
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 254
    :cond_2
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;-><init>()V

    .line 255
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setAccount(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCaptcha(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setPassword(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCountry(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c03bd,
            0x7f0c0403
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 201
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    if-ne p1, v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->g()V

    .line 203
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 204
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 207
    :cond_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$4;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;JJ)V

    .line 218
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$4;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 219
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_modify_password:I

    if-ne p1, v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
