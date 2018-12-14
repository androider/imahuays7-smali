.class public Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "BindAliPayActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/e$b;"
    }
.end annotation


# instance fields
.field c:[Z

.field etBindAccount:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00b8
    .end annotation
.end field

.field etBindName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00bc
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
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

    .line 32
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->c:[Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 108
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->etBindAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->setAlipayAccount(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->etBindName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->setAlipayName(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->setUserId(J)V

    .line 112
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/presenter/BindAliPayPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;Z)V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->c:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->c:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->tvGetMoneySubmit:Landroid/widget/TextView;

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

    .line 61
    sget p1, Lcom/mh/movie/core/R$layout;->activity_bind_ali_pay:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->e()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Lcom/mh/movie/core/a/a/q;->a()Lcom/mh/movie/core/a/a/q$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/q$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/q$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/m;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/m;-><init>(Lcom/mh/movie/core/mvp/a/e$b;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/q$a;->a(Lcom/mh/movie/core/a/b/m;)Lcom/mh/movie/core/a/a/q$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/q$a;->a()Lcom/mh/movie/core/a/a/e;

    move-result-object p1

    .line 56
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/e;->a(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->r:Landroid/content/Context;

    sget v0, Lcom/mh/movie/core/R$color;->color_f5_f7:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    .line 68
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/j;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/j;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->etBindAccount:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->etBindName:Landroid/widget/EditText;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->tvGetMoneySubmit:Landroid/widget/TextView;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/k;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/k;-><init>(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->onBackPressed()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x1

    .line 162
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->finish()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
