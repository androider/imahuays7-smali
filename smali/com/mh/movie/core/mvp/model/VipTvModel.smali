.class public Lcom/mh/movie/core/mvp/model/VipTvModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "VipTvModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bj$a;


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


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 32
    new-instance v0, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/VipTvModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

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

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/VipTvModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->g(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/VipTvModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/model/b/g;->a(IIII)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/VipTvModel;->b:Lcom/google/gson/e;

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/VipTvModel;->c:Landroid/app/Application;

    return-void
.end method

.method public b(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/VipTvModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->h(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
