.class Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;
.super Landroid/os/CountDownTimer;
.source "ScreeningPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;JJ)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->e(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/c$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->r:Ljava/util/List;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/a/b/c$b;->a(Ljava/util/List;J)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 144
    invoke-static {}, Lcom/mh/movie/core/androidupnp/b/d;->a()Lcom/mh/movie/core/androidupnp/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/b/d;->b()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/androidupnp/b/c;

    .line 148
    invoke-virtual {v1}, Lcom/mh/movie/core/androidupnp/b/c;->a()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->r:Ljava/util/List;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->d(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/c$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->r:Ljava/util/List;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-interface {v0, v1, p1, p2}, Lcom/mh/movie/core/mvp/a/b/c$b;->a(Ljava/util/List;J)V

    :cond_2
    return-void
.end method
