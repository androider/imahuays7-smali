.class public Lcom/mh/movie/core/mvp/model/UserModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "UserModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bg$a;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/model/UserModel;)Lcom/jess/arms/integration/IRepositoryManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/UserModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    return-object p0
.end method


# virtual methods
.method public a(IZ)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/UserModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/b/a;

    .line 64
    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/b/a;

    const/16 v1, 0xa

    .line 65
    invoke-interface {v0, p1, v1}, Lcom/mh/movie/core/mvp/model/a/b/a;->a(II)Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/model/UserModel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mh/movie/core/mvp/model/UserModel$1;-><init>(Lcom/mh/movie/core/mvp/model/UserModel;IZ)V

    .line 66
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method onPause()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/k;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "Release Resource"

    const/4 v1, 0x0

    .line 81
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lb/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
