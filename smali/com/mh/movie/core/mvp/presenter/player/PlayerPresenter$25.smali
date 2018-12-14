.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;II)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->a:I

    iput p5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->b:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1043
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->F:Ljava/util/HashMap;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->b:I

    sget v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->k:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->a:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V

    goto :goto_0

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->I(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->b:I

    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/a/b/b$b;->b(Ljava/util/List;I)V

    .line 1052
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->J(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1057
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 1058
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->K(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Z)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1063
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 1064
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$25;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->L(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Z)V

    return-void
.end method
