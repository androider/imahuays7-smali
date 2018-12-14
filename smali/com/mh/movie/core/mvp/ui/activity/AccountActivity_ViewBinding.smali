.class public Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AccountActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->ll_account_pwd:I

    const-string v1, "field \'llAccountPwd\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    sget v1, Lcom/mh/movie/core/R$id;->ll_account_pwd:I

    const-string v2, "field \'llAccountPwd\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->llAccountPwd:Landroid/widget/LinearLayout;

    .line 35
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;->b:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->tv_account_tel:I

    const-string v1, "field \'tvAccountTel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->tvAccountTel:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->llAccountPwd:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity;->tvAccountTel:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AccountActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
