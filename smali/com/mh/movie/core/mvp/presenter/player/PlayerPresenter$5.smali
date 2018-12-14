.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;Ljava/util/List;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->a:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    iput-object p5, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->b:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;)V
    .locals 4

    .line 871
    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/j;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->o:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->a:Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->y(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/player/j;-><init>(ILcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;I)V

    .line 872
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->b:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/player/j;->a(Ljava/util/List;)V

    .line 873
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->z(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(Lcom/mh/movie/core/mvp/presenter/player/j;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 866
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$5;->a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 881
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
