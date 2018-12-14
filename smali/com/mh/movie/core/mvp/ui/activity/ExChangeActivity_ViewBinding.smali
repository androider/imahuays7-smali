.class public Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ExChangeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->tv_exchange_balance:I

    const-string v1, "field \'tvExchangeBalance\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->tvExchangeBalance:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->recycler_changed:I

    const-string v1, "field \'recyclerChanged\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerChanged:Landroid/support/v7/widget/RecyclerView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->recycler_unchanged:I

    const-string v1, "field \'recyclerUnchanged\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerUnchanged:Landroid/support/v7/widget/RecyclerView;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->linear_changed:I

    const-string v1, "field \'linearChanged\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->linearChanged:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->ll_un_exchange:I

    const-string v1, "field \'linearUnExchange\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->linearUnExchange:Landroid/widget/LinearLayout;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->nsv_scroll:I

    const-string v1, "field \'nsvScroll\'"

    const-class v2, Landroid/support/v4/widget/NestedScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->nsvScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->tvExchangeBalance:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerChanged:Landroid/support/v7/widget/RecyclerView;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->recyclerUnchanged:Landroid/support/v7/widget/RecyclerView;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->linearChanged:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->linearUnExchange:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->nsvScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 55
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
