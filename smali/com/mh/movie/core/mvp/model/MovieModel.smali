.class public Lcom/mh/movie/core/mvp/model/MovieModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "MovieModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ac$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Lcom/mh/movie/core/mvp/model/b/b;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 39
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MovieModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/b;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/MovieModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/model/MovieModel;)Lcom/jess/arms/integration/IRepositoryManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/MovieModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

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

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MovieModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/b;->a(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(III)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MovieModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    .line 52
    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    .line 53
    invoke-interface {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/a/a;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/model/MovieModel$1;

    invoke-direct {p2, p0, p3}, Lcom/mh/movie/core/mvp/model/MovieModel$1;-><init>(Lcom/mh/movie/core/mvp/model/MovieModel;I)V

    .line 54
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MovieModel;->b:Lcom/google/gson/e;

    .line 46
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MovieModel;->c:Landroid/app/Application;

    return-void
.end method
