.class Lcom/mh/movie/core/mvp/presenter/SplashPresenter$10;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SplashPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$10;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;)V
    .locals 3

    const-string v0, "TTT"

    .line 333
    invoke-static {v0}, Lb/a/a;->a(Ljava/lang/String;)Lb/a/a$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryRandomBarrage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lb/a/a$a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 328
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$10;->a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageMap;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 339
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
