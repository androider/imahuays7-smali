.class public Lcom/mh/movie/core/mvp/model/main/MainModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "MainModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/a/a$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/mh/movie/core/mvp/model/b/a;

.field e:Lcom/mh/movie/core/mvp/model/b/g;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 37
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/a;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->d:Lcom/mh/movie/core/mvp/model/b/a;

    .line 38
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->d:Lcom/mh/movie/core/mvp/model/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/b/a;->a(ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->e(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->b:Lcom/google/gson/e;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->c:Landroid/app/Application;

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

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->d:Lcom/mh/movie/core/mvp/model/b/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/a;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/main/MainModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->j()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
