.class Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "VipTvPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->i:I

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->a(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bj$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bj$b;->b(Ljava/util/List;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->b(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bj$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/bj$b;->b(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
