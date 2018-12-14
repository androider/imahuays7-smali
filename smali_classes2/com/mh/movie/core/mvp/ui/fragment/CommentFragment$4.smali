.class Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->b(III)V

    return-void
.end method

.method public a(III)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->c(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(III)V

    return-void
.end method

.method public a(ILjava/lang/String;II)V
    .locals 9

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    .line 185
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    iget v7, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    iget v8, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x:I

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(ILjava/lang/String;IIII)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    .line 191
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->c()V

    return-void
.end method
