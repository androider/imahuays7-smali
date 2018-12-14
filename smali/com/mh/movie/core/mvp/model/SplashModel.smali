.class public Lcom/mh/movie/core/mvp/model/SplashModel;
.super Lcom/mh/movie/core/mvp/model/MHBaseModel;
.source "SplashModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ba$a;


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

.field private e:Lcom/mh/movie/core/mvp/model/b/g;

.field private f:Lcom/mh/movie/core/mvp/model/b/d;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/model/MHBaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 49
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/c;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/c;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    .line 50
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    .line 51
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/d;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/d;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->f:Lcom/mh/movie/core/mvp/model/b/d;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/model/SplashModel;)Lcom/jess/arms/integration/IRepositoryManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    .line 65
    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    .line 66
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->getInvitation()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/mh/movie/core/mvp/model/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/model/SplashModel$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/model/SplashModel$1;-><init>(Lcom/mh/movie/core/mvp/model/SplashModel;)V

    .line 67
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->f:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/mh/movie/core/mvp/model/MHBaseModel;->a()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->b:Lcom/google/gson/e;

    .line 58
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->c:Landroid/app/Application;

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

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/c;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->f:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->b(Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public c()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->d:Lcom/mh/movie/core/mvp/model/b/c;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/b/c;->a(J)Lio/reactivex/Observable;

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

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->j()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/SplashModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->i()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
