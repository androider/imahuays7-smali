.class public Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SystemMessageActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->lmw_message_system:I

    const-string v1, "field \'lmwMessageSystem\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;->lmwMessageSystem:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;

    .line 38
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 39
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/SystemMessageActivity;->lmwMessageSystem:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
