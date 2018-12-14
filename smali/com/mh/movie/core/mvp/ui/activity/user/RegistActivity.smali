.class public Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "RegistActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/as$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/RegistPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/as$b;"
    }
.end annotation


# instance fields
.field c:I

.field cbAgreement:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0066
    .end annotation
.end field

.field d:I

.field details:Landroid/widget/ViewFlipper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00ac
    .end annotation
.end field

.field e:Ljava/lang/String;

.field etInvitationCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c1
    .end annotation
.end field

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

.field flAgreement:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00fb
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field i:Landroid/view/View$OnClickListener;

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

.field ibClearCode2:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0112
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

.field private j:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

.field private k:Z

.field private l:Landroid/os/CountDownTimer;

.field rlInvitationCode:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02e0
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

.field tvLogin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03f5
    .end annotation
.end field

.field tvPhoineNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c041e
    .end annotation
.end field

.field tvProtocol:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c043c
    .end annotation
.end field

.field tvRegist:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c044d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    .line 63
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->j:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

    const/16 v0, 0xb

    .line 111
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->c:I

    const/16 v0, 0x56

    .line 112
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    const-string v0, "CHINA"

    .line 113
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->k:Z

    .line 118
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->f:Z

    .line 119
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->g:Z

    .line 120
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->h:Z

    .line 305
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private l()V
    .locals 2

    .line 344
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->j:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

    .line 345
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const-string v1, "\u6ce8\u518c"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    sget v1, Lcom/mh/movie/core/R$anim;->translate_left_to_center:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 348
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    sget v1, Lcom/mh/movie/core/R$anim;->translate_center_to_right:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 349
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 354
    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;->b:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->j:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

    .line 356
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    const/16 v1, 0x56

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvPhoineNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->phoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvPhoineNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    sget v1, Lcom/mh/movie/core/R$anim;->translate_right_to_center:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 363
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    sget v1, Lcom/mh/movie/core/R$anim;->translate_center_to_left:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 364
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->details:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 365
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etVerifyCode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const-string v1, "\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    sget p1, Lcom/mh/movie/core/R$layout;->activity_regist:I

    return p1
.end method

.method public a(J)V
    .locals 3

    .line 445
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 447
    sput-wide p1, Lcom/mh/movie/core/mvp/ui/b;->D:J

    .line 448
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, "sing up success"

    const-string v2, "sign_up_success"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->l:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 451
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 452
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/b;->b(Landroid/content/Context;)V

    .line 455
    :cond_0
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string p2, ""

    const-string v0, "forget2MyFragment"

    invoke-virtual {p1, p2, v0}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->finish()V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 306
    sget-object p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$7;->a:[I

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->j:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$a;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l()V

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->onBackPressed()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    invoke-static {}, Lcom/mh/movie/core/a/a/bd;->a()Lcom/mh/movie/core/a/a/bd$a;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bd$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/dq;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/dq;-><init>(Lcom/mh/movie/core/mvp/a/as$b;)V

    .line 142
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/mh/movie/core/a/b/dq;)Lcom/mh/movie/core/a/a/bd$a;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bd$a;->a()Lcom/mh/movie/core/a/a/db;

    move-result-object p1

    .line 144
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/db;->a(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->m()V

    goto :goto_0

    :cond_0
    const-string p1, "\u9080\u8bf7\u7801\u4e0d\u5b58\u5728\u6216\u9519\u8bef\uff0c\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9080\u8bf7\u7801\u6216\u4e0d\u8f93\u5165"

    .line 464
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountry:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountryNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->c:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 157
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearAll:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->rlInvitationCode:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->rlInvitationCode:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-virtual {p1, v3}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->setVisibility(I)V

    .line 174
    :goto_0
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->k:Z

    .line 175
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->cbAgreement:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->login_checkbox_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "\u6211\u5df2\u9605\u8bfb\u5e76\u5df2\u540c\u610f"

    const-string v0, "\u300a\u7528\u6237\u6ce8\u518c\u534f\u8bae\u300b"

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int v7, v1, v2

    .line 180
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvProtocol:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sget v8, Lcom/mh/movie/core/R$color;->themeColor:I

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->addForeColorSpan(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 182
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->e()V

    .line 183
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->f()V

    .line 207
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etVerifyCode:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etInvitationCode:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibEye:Landroid/widget/ImageView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$5;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public c()V
    .locals 7

    .line 470
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 473
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;JJ)V

    .line 484
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l:Landroid/os/CountDownTimer;

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 328
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvLogin:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->f:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvRegist:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->h:Z

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

    .line 423
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const-string v1, "\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->getRightTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->r:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 429
    :cond_0
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->k:Z

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->r:Landroid/content/Context;

    const-string v1, "\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u7528\u6237\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->rlInvitationCode:Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/ExpandableLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etInvitationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etInvitationCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 437
    :cond_2
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->m()V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 519
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountdown:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 525
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;-><init>()V

    .line 526
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setAccount(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setType(I)V

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->setCountry(Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-virtual {v2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;Z)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    .line 537
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    .line 541
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u5c0f\u4e8e6\u4f4d\u5b57\u7b26"

    .line 545
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 549
    :cond_2
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;-><init>()V

    .line 550
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setAccount(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etVerifyCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCaptcha(Ljava/lang/String;)V

    .line 553
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 554
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCode(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etInvitationCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCode(Ljava/lang/String;)V

    .line 559
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setPassword(Ljava/lang/String;)V

    .line 560
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setModel(Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->setCountry(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 494
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "country"

    .line 497
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 498
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 499
    aget-object p3, p1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 500
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->c:I

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x2

    .line 504
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->e:Ljava/lang/String;

    .line 505
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->c:I

    .line 506
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    .line 508
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountry:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->tvCountryNum:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->d:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance p3, Landroid/text/InputFilter$LengthFilter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->c:I

    invoke-direct {p3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0112,
            0x7f0c0113,
            0x7f0c0111,
            0x7f0c03be,
            0x7f0c03bf,
            0x7f0c0110,
            0x7f0c03f5,
            0x7f0c043c,
            0x7f0c03bd,
            0x7f0c044d,
            0x7f0c00fb
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 380
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_code2:I

    if-ne p1, v0, :cond_0

    .line 382
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etVerifyCode:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 383
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    if-ne p1, v0, :cond_1

    .line 384
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPsw:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 385
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_code:I

    if-ne p1, v0, :cond_2

    .line 387
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etInvitationCode:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 388
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->fl_agreement:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 389
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->k:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 390
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->k:Z

    .line 391
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->cbAgreement:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->login_checkbox_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 393
    :cond_3
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->k:Z

    .line 394
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->cbAgreement:Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->login_checkbox_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 396
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->tv_country:I

    if-ne p1, v0, :cond_5

    goto/16 :goto_0

    .line 398
    :cond_5
    sget v0, Lcom/mh/movie/core/R$id;->tv_country_num:I

    if-ne p1, v0, :cond_6

    .line 399
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/SearchStateNumActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 401
    :cond_6
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    if-ne p1, v0, :cond_7

    .line 402
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 403
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_7
    sget v0, Lcom/mh/movie/core/R$id;->tv_login:I

    if-ne p1, v0, :cond_8

    .line 406
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->g()V

    goto :goto_0

    .line 407
    :cond_8
    sget v0, Lcom/mh/movie/core/R$id;->tv_protocol:I

    if-ne p1, v0, :cond_9

    .line 408
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/RuleActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 410
    :cond_9
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    if-ne p1, v0, :cond_b

    .line 411
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->etPhoneNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 412
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->h()V

    goto :goto_0

    .line 414
    :cond_a
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->r:Landroid/content/Context;

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_b
    sget v0, Lcom/mh/movie/core/R$id;->tv_regist:I

    if-ne p1, v0, :cond_c

    .line 417
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->k()V

    :cond_c
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
