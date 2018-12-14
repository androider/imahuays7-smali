.class Lcom/mh/movie/core/mvp/model/UserModel$1;
.super Ljava/lang/Object;
.source "UserModel.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/model/UserModel;->a(IZ)Lio/reactivex/Observable;
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
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/User;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/User;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/mh/movie/core/mvp/model/UserModel;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/model/UserModel;IZ)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/UserModel$1;->c:Lcom/mh/movie/core/mvp/model/UserModel;

    iput p2, p0, Lcom/mh/movie/core/mvp/model/UserModel$1;->a:I

    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/model/UserModel$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a(Lio/rx_cache2/n;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lio/rx_cache2/n;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
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
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/UserModel$1;->c:Lcom/mh/movie/core/mvp/model/UserModel;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/model/UserModel;->a(Lcom/mh/movie/core/mvp/model/UserModel;)Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainCacheService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a/a;

    new-instance v1, Lio/rx_cache2/b;

    iget v2, p0, Lcom/mh/movie/core/mvp/model/UserModel$1;->a:I

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/rx_cache2/b;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/rx_cache2/f;

    iget-boolean v3, p0, Lcom/mh/movie/core/mvp/model/UserModel$1;->b:Z

    invoke-direct {v2, v3}, Lio/rx_cache2/f;-><init>(Z)V

    .line 70
    invoke-interface {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/model/a/a/a;->a(Lio/reactivex/Observable;Lio/rx_cache2/b;Lio/rx_cache2/h;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/model/de;->a:Lio/reactivex/functions/Function;

    .line 73
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 66
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/model/UserModel$1;->a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
