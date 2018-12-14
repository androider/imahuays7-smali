.class Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SplashPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;->getEjectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->h(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ba$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/DateUtils;->longFormatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->t:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/DateUtils;->longFormatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->i(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ba$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;->a(Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
