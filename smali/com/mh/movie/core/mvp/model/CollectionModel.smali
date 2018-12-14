.class public Lcom/mh/movie/core/mvp/model/CollectionModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "CollectionModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/h$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/mh/movie/core/mvp/model/b/g;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 33
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/CollectionModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/CollectionModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/CollectionModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->b(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/CollectionModel;->b:Lcom/google/gson/e;

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/CollectionModel;->c:Landroid/app/Application;

    return-void
.end method

.method public b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/CollectionModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->f()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
