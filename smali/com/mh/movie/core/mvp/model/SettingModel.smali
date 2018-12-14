.class public Lcom/mh/movie/core/mvp/model/SettingModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "SettingModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/az$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/mh/movie/core/mvp/model/b/c;

.field public e:Lcom/mh/movie/core/mvp/model/b/g;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 33
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/c;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/c;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    .line 34
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->b:Lcom/google/gson/e;

    .line 41
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->c:Landroid/app/Application;

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

    .line 47
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/c;->c()Lio/reactivex/Observable;

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

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SettingModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
