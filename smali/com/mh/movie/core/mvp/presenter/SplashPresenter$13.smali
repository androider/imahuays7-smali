.class Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SplashPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;)V
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Z)V

    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    const-string v2, "sp_random_barrage_update_time"

    invoke-static {v1, v2}, Lcom/jess/arms/c/d;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 360
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {v1, v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Z)V

    .line 361
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    const-string v1, "sp_random_barrage_update_time"

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getUpdateTime()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;->getUpdateTime()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 366
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Z)V

    return-void

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 348
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;->a(Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrageRule;)V

    return-void
.end method
