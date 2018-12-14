.class public Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "BindBankActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/f$b;"
    }
.end annotation


# instance fields
.field c:[Z

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field etBindBankAccount:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00b9
    .end annotation
.end field

.field etBindBankInfo:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00ba
    .end annotation
.end field

.field etBindBankOwner:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00bb
    .end annotation
.end field

.field private f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field ivClearInput:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c013f
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/Runnable;

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvBindBankAddress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03a3
    .end annotation
.end field

.field tvBindBankName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03a4
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

    .line 49
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x5

    .line 67
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->c:[Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->d:Ljava/util/Map;

    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->k:Landroid/os/Handler;

    .line 284
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->l()V

    return-void
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$color;->color_f5_f7:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    .line 109
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/l;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/l;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankAccount:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;I)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankName:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankOwner:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankAddress:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankInfo:Landroid/widget/EditText;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvGetMoneySubmit:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/m;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/m;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankName:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/n;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/n;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankAddress:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/o;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/o;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->ivClearInput:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/p;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/p;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->g()V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->c:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->c:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvGetMoneySubmit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    sget p1, Lcom/mh/movie/core/R$layout;->activity_bind_bank:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankAccount:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-static {}, Lcom/mh/movie/core/a/a/r;->a()Lcom/mh/movie/core/a/a/r$a;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/r$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/r$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/p;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/p;-><init>(Lcom/mh/movie/core/mvp/a/f$b;)V

    .line 90
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/r$a;->a(Lcom/mh/movie/core/a/b/p;)Lcom/mh/movie/core/a/a/r$a;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/r$a;->a()Lcom/mh/movie/core/a/a/f;

    move-result-object p1

    .line 92
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/f;->a(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "DC"

    if-eq p1, v0, :cond_0

    .line 228
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->d:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 229
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->j:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->d:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->i:Ljava/lang/String;

    .line 231
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankName:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->r:Landroid/content/Context;

    const-string p2, "\u4ec5\u652f\u6301\u50a8\u84c4\u5361\u63d0\u73b0"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->h()V

    .line 103
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->k()V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->e()V

    return-void
.end method

.method final synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 129
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->h:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->g:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankAddress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x1

    .line 240
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->setResult(I)V

    .line 241
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->finish()V

    return-void
.end method

.method final synthetic c(Landroid/view/View;)V
    .locals 2

    .line 119
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/SelectBankActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x7788

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 191
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic d(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->f()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/q;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/q;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->show()V

    return-void
.end method

.method final synthetic e(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->onBackPressed()V

    return-void
.end method

.method public f()V
    .locals 4

    .line 138
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankAccount:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankAccount(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankCity(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankCode(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankName(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankOpen(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankProvince(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankTel(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankOwner:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setBankUserName(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;->setUserId(J)V

    .line 149
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;Z)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "info_banklist.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 157
    new-array v1, v1, [B

    .line 158
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 159
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 160
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 161
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$1;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

    .line 162
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 161
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/BankInfo;

    .line 164
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/BankInfo;->getEN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/BankInfo;->getCN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7788

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "select_bank"

    .line 178
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->getBankCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->j:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->getBankName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->i:Ljava/lang/String;

    .line 182
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->getBankName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 219
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
