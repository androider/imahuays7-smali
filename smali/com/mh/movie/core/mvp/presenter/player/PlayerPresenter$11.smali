.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 921
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    .line 924
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->A(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)I

    .line 926
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->B(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->a:I

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->c(Ljava/util/List;I)V

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->C(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->a:I

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->c(Ljava/util/List;I)V

    .line 930
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e:I

    if-ge p1, v0, :cond_1

    .line 931
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$11;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->D(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->g()V

    :cond_1
    return-void
.end method
