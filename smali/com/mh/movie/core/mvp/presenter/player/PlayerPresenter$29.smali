.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;
.super Ljava/lang/Object;
.source "PlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1097
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a/a;->a()I

    move-result v0

    .line 1098
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/androidupnp/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->N(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->O(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/b/b$b;->d()V

    :cond_0
    return-void

    .line 1105
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v2

    iget-object v2, v2, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;-><init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;IZ)V

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/androidupnp/a/a;->a(Lcom/mh/movie/core/androidupnp/a/a/b;)V

    .line 1120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1121
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->j:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
