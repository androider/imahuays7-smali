.class public Lcom/mh/movie/core/mvp/ui/activity/AllActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AllActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->recycler_content:I

    const-string v1, "field \'recyclerContent\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->recyclerContent:Landroid/support/v7/widget/RecyclerView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->tv_select_filter:I

    const-string v1, "field \'tvSelectFilter\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->tvSelectFilter:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->rl_content:I

    const-string v1, "field \'rlContent\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->rlContent:Landroid/widget/RelativeLayout;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->recyclerContent:Landroid/support/v7/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->tvSelectFilter:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->rlContent:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
