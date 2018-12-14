.class public Lcom/mh/movie/core/mvp/model/TvplayDetailModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "TvplayDetailModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bf$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/mh/movie/core/mvp/model/b/d;

.field public e:Lcom/mh/movie/core/mvp/model/b/g;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 37
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/d;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/d;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    .line 38
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
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
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->d(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/b/d;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->d(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->b:Lcom/google/gson/e;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/TvplayDetailModel;->c:Landroid/app/Application;

    return-void
.end method
