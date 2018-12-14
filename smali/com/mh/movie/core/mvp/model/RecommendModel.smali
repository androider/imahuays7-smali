.class public Lcom/mh/movie/core/mvp/model/RecommendModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "RecommendModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ar$a;


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

    .line 44
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 45
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/b;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/model/RecommendModel;)Lcom/jess/arms/integration/IRepositoryManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/model/RecommendModel;)Lcom/jess/arms/integration/IRepositoryManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    return-object p0
.end method


# virtual methods
.method public a(I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    .line 80
    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    .line 81
    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/model/a/a;->n(I)Lio/reactivex/Observable;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/model/RecommendModel$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/model/RecommendModel$2;-><init>(Lcom/mh/movie/core/mvp/model/RecommendModel;I)V

    .line 82
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    .line 58
    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    .line 59
    invoke-interface {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/a/a;->b(III)Lio/reactivex/Observable;

    move-result-object p3

    .line 57
    invoke-static {p3}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/mh/movie/core/mvp/model/RecommendModel$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/mh/movie/core/mvp/model/RecommendModel$1;-><init>(Lcom/mh/movie/core/mvp/model/RecommendModel;II)V

    .line 60
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->b:Lcom/google/gson/e;

    .line 52
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->c:Landroid/app/Application;

    return-void
.end method

.method public b(III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/RecommendModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/b/b;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
