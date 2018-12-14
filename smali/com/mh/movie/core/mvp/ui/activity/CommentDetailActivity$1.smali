.class Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(III)V

    return-void
.end method

.method public a(III)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->b(III)V

    return-void
.end method

.method public a(ILjava/lang/String;II)V
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getVideoInfoId()I

    move-result v7

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(ILjava/lang/String;IIII)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getVideoInfoId()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;

    iget-object v4, v4, Lcom/mh/movie/core/mvp/ui/activity/CommentDetailActivity;->e:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    :cond_0
    return-void
.end method
