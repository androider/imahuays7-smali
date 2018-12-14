.class public Lcom/mh/movie/core/mvp/ui/activity/MoreActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MoreActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->mcv_more:I

    const-string v1, "field \'mcvMore\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    .line 38
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->mcvMore:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    .line 39
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    return-void
.end method
