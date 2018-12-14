.class Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;
.super Ljava/lang/Object;
.source "CommentDetailView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/holder/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 204
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    const/4 v1, 0x3

    iput v1, v0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->j:I

    .line 205
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIssueUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->d:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 211
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIsApprove()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$3;->a:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->f:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v0

    invoke-interface {v1, v2, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;->a(III)V

    :cond_0
    return-void
.end method
