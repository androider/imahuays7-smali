.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g(I)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1129
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;->a(Ljava/util/List;)V

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

    .line 1132
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->Q(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/b/b$b;->e(Ljava/util/List;)V

    .line 1133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1134
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->E:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$30;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(I)V

    return-void
.end method
