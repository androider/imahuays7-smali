.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Ljava/util/List;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;->a:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;)V
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;->b:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;Ljava/util/List;Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 890
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$7;->a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;)V

    return-void
.end method
