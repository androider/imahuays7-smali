.class public Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "ModifyPasswordModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/aa$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Lcom/mh/movie/core/mvp/model/b/c;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 33
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/c;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/c;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/c;->c(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/c;->a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;->b:Lcom/google/gson/e;

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;->c:Landroid/app/Application;

    return-void
.end method
