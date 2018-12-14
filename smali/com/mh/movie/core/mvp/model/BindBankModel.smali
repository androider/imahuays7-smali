.class public Lcom/mh/movie/core/mvp/model/BindBankModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "BindBankModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/f$a;


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

    .line 29
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 30
    new-instance v0, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/BindBankModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/BindBankModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->a(Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/BindBankModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->d(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/BindBankModel;->b:Lcom/google/gson/e;

    .line 37
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/BindBankModel;->c:Landroid/app/Application;

    return-void
.end method
