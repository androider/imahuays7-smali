.class public Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;
.super Lcom/mh/movie/core/mvp/ui/fragment/h;
.source "BankBindFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mh/movie/core/mvp/a/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/fragment/h<",
        "Lcom/mh/movie/core/mvp/presenter/BankBindPresenter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/mh/movie/core/mvp/a/d$b;"
    }
.end annotation


# instance fields
.field c:Lbutterknife/Unbinder;

.field d:[I

.field e:Z

.field etGetMoneyNum:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00c0
    .end annotation
.end field

.field f:I

.field g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

.field ivGetMoneyClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0145
    .end annotation
.end field

.field ivLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0156
    .end annotation
.end field

.field private j:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

.field private k:I

.field llBindInfo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01c1
    .end annotation
.end field

.field myMeasureLinearLayout:Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0267
    .end annotation
.end field

.field tvBindTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03a0
    .end annotation
.end field

.field tvBindTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0482
    .end annotation
.end field

.field tvGetMoneyCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03e0
    .end annotation
.end field

.field tvGetMoneyName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03e1
    .end annotation
.end field

.field tvGetMoneySubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03e2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/h;-><init>()V

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->d:[I

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->e:Z

    .line 83
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->f:I

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;)Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;
    .locals 3

    .line 108
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;-><init>()V

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 110
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k()Z

    move-result p0

    return p0
.end method

.method private g()V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->j:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->j:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;->bank:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k:I

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->g()Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;->getBankName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTitle:Landroid/widget/TextView;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Landroid/view/View;ZI)V

    .line 142
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->llBindInfo:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0, v2}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Landroid/view/View;ZI)V

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->g()Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;->getBankName()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->g()Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;->getBankAccount()Ljava/lang/String;

    move-result-object v1

    .line 147
    sget v2, Lcom/mh/movie/core/R$mipmap;->ico_withdrewal_card:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTitle:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u94f6\u884c\u5361"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 155
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k:I

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->g()Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;->getAlipayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTitle:Landroid/widget/TextView;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Landroid/view/View;ZI)V

    .line 158
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->llBindInfo:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0, v2}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(Landroid/view/View;ZI)V

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->g()Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;->getAlipayName()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->g()Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/GetBindCardResponse;->getAlipayAccount()Ljava/lang/String;

    move-result-object v1

    .line 162
    sget v2, Lcom/mh/movie/core/R$mipmap;->ico_withdrewal_alipay:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTitle:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u652f\u4ed8\u5b9d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivGetMoneyClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/a;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private k()Z
    .locals 10

    .line 309
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    rem-double v6, v2, v4

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-nez v0, :cond_1

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    sget v1, Lcom/mh/movie/core/R$string;->bank_bind_tips:I

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->text_99:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return v1

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$string;->bank_bind_tips:I

    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$color;->share_system:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return v1
.end method

.method private l()V
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;-><init>()V

    .line 343
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->setUserId(J)V

    .line 344
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->setCashMoney(I)V

    .line 345
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k:I

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;->setType(I)V

    .line 346
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/BankBindPresenter;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/presenter/BankBindPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/UpdateCashRequest;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    sget p3, Lcom/mh/movie/core/R$layout;->fragment_bank_bind:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->j:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;->bank:Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity$BindType;

    if-ne p1, v0, :cond_0

    .line 173
    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/utils/HideUtils;->hideCardNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/utils/HideUtils;->hideName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/utils/HideUtils;->hideAliAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    :goto_0
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneyName:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneyCode:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 132
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g()V

    .line 133
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->h()V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 377
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-static {}, Lcom/mh/movie/core/a/a/p;->a()Lcom/mh/movie/core/a/a/p$a;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/p$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/j;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/j;-><init>(Lcom/mh/movie/core/mvp/a/d$b;)V

    .line 120
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/mh/movie/core/a/b/j;)Lcom/mh/movie/core/a/a/p$a;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/p$a;->a()Lcom/mh/movie/core/a/a/d;

    move-result-object p1

    .line 122
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/d;->a(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->d()Z

    .line 279
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivGetMoneyClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 282
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivGetMoneyClose:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 286
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 295
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/GetMoneyActivity;->e()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$string;->bank_bind_tips1:I

    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$color;->share_system:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return v1

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    sget v1, Lcom/mh/movie/core/R$string;->bank_bind_tips:I

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->text_99:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return v1
.end method

.method public e()V
    .locals 3

    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 352
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onActivityResult(IILandroid/content/Intent;)V

    .line 353
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k:I

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 356
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->g:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment$a;->f()V

    .line 357
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->d:[I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 328
    sget v0, Lcom/mh/movie/core/R$id;->tv_un_bind_title:I

    if-ne p1, v0, :cond_1

    .line 329
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->k:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->f()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->e()V

    goto :goto_0

    .line 334
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_get_money_submit:I

    if-ne p1, v0, :cond_2

    .line 335
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->l()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 262
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->c:Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
