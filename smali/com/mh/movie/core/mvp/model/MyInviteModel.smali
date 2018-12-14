.class public Lcom/mh/movie/core/mvp/model/MyInviteModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "MyInviteModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ah$a;


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

    .line 28
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 29
    new-instance v0, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MyInviteModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/MyInviteModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/b/g;->b(II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MyInviteModel;->b:Lcom/google/gson/e;

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MyInviteModel;->c:Landroid/app/Application;

    return-void
.end method
