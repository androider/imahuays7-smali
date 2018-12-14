.class public Lcom/mh/movie/core/mvp/model/MoreModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "MoreModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ab$a;


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

    .line 32
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 33
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MoreModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/b;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/MoreModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    return-void
.end method


# virtual methods
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

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MoreModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/b/b;->b(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MoreModel;->b:Lcom/google/gson/e;

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MoreModel;->c:Landroid/app/Application;

    return-void
.end method
