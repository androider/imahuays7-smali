.class public Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CommentFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    .line 22
    sget v0, Lcom/mh/movie/core/R$id;->rv_player_detail_commend:I

    const-string v1, "field \'rvPlayerDetailCommend\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->rvPlayerDetailCommend:Landroid/support/v7/widget/RecyclerView;

    .line 23
    sget v0, Lcom/mh/movie/core/R$id;->no_commend_tips:I

    const-string v1, "field \'noCommendTips\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->noCommendTips:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    .line 33
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->rvPlayerDetailCommend:Landroid/support/v7/widget/RecyclerView;

    .line 34
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->noCommendTips:Landroid/widget/TextView;

    return-void
.end method
