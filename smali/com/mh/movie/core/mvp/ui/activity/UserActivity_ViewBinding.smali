.class public Lcom/mh/movie/core/mvp/ui/activity/UserActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->recyclerView:I

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->swipeRefreshLayout:I

    const-string v1, "field \'mSwipeRefreshLayout\'"

    const-class v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/UserActivity;

    .line 38
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/UserActivity;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-void
.end method
