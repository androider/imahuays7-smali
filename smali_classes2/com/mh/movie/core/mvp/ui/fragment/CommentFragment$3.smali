.class Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;
.super Ljava/lang/Object;
.source "CommentFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/holder/h$a;


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

    .line 144
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    iput-object p1, v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->g:Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 149
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->c()V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/adapter/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    .line 156
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getIsApprove()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(III)V

    :cond_0
    return-void
.end method
