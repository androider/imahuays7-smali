.class Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;
.super Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriber;
.source "UserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/UserPresenter;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriber<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Z)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->a:Z

    invoke-direct {p0, p2}, Lme/jessyan/rxerrorhandler/handler/ErrorHandleSubscriber;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/User;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/User;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;I)I

    .line 124
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->b(Lcom/mh/movie/core/mvp/presenter/UserPresenter;I)I

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->a:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->i:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->i:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->b:Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;->a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/UserPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method
