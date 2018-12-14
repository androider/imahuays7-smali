.class public Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CollectionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->lm_wrapper:I

    const-string v1, "field \'lmWrapper\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->rl_content:I

    const-string v1, "field \'rlContent\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->rlContent:Landroid/widget/RelativeLayout;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->sv_state:I

    const-string v1, "field \'svState\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;

    .line 40
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->lmWrapper:Lcom/mh/movie/core/mvp/ui/widget/LoadMoreWrapper;

    .line 41
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->rlContent:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/CollectionActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    return-void
.end method
