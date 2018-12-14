.class public Lcom/mh/movie/core/mvp/ui/activity/WalletActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WalletActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->tv_money_balance:I

    const-string v1, "field \'tvMoneyBalance\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->tvMoneyBalance:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->tv_make_money:I

    const-string v1, "field \'tvMakeMoney\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->tvMakeMoney:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->recycler_money_record:I

    const-string v1, "field \'recyclerMoneyRecord\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->ll_content:I

    const-string v1, "field \'llContent\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->llContent:Landroid/widget/LinearLayout;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->tvMoneyBalance:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->tvMakeMoney:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->recyclerMoneyRecord:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->llContent:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
