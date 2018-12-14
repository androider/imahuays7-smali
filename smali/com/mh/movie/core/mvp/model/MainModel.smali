.class public Lcom/mh/movie/core/mvp/model/MainModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "MainModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/x$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/mh/movie/core/mvp/model/b/g;

.field e:Lcom/mh/movie/core/mvp/model/b/b;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 43
    new-instance v0, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MainModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    .line 44
    new-instance v0, Lcom/mh/movie/core/mvp/model/b/b;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/b/b;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MainModel;->e:Lcom/mh/movie/core/mvp/model/b/b;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/model/MainModel;)Lcom/jess/arms/integration/IRepositoryManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/MainModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    return-object p0
.end method


# virtual methods
.method public a(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MainModel;->e:Lcom/mh/movie/core/mvp/model/b/b;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/b;->a(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MainModel;->b:Lcom/google/gson/e;

    .line 51
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MainModel;->c:Landroid/app/Application;

    return-void
.end method

.method public b()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MainModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    .line 57
    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    .line 58
    invoke-interface {v0}, Lcom/mh/movie/core/mvp/model/a/a;->j()Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/model/MainModel$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/model/MainModel$1;-><init>(Lcom/mh/movie/core/mvp/model/MainModel;)V

    .line 59
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
