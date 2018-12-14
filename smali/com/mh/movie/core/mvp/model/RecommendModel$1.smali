.class Lcom/mh/movie/core/mvp/model/RecommendModel$1;
.super Ljava/lang/Object;
.source "RecommendModel.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/model/RecommendModel;->a(III)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/model/RecommendModel;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/model/RecommendModel;II)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->c:Lcom/mh/movie/core/mvp/model/RecommendModel;

    iput p2, p0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->a:I

    iput p3, p0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 4
    .param p1    # Lio/reactivex/Observable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->c:Lcom/mh/movie/core/mvp/model/RecommendModel;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/model/RecommendModel;->a(Lcom/mh/movie/core/mvp/model/RecommendModel;)Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainCacheService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a/a;

    new-instance v1, Lio/rx_cache2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/rx_cache2/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/rx_cache2/f;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->c:Lcom/mh/movie/core/mvp/model/RecommendModel;

    iget-object v3, v3, Lcom/mh/movie/core/mvp/model/RecommendModel;->c:Landroid/app/Application;

    .line 64
    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v2, v3}, Lio/rx_cache2/f;-><init>(Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/model/a/a/a;->c(Lio/reactivex/Observable;Lio/rx_cache2/b;Lio/rx_cache2/h;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/RecommendModel$1;->a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
