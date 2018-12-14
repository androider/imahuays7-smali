.class public Lcom/mh/movie/core/mvp/model/player/TagModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "TagModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/b/d$a;


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

    .line 28
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 29
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/TagModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/b;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/player/TagModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/TagModel;->d:Lcom/mh/movie/core/mvp/model/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/model/b/b;->a(Ljava/lang/String;III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/player/TagModel;->b:Lcom/google/gson/e;

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/player/TagModel;->c:Landroid/app/Application;

    return-void
.end method
