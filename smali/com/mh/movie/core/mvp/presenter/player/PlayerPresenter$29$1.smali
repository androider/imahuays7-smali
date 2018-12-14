.class Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;
.super Ljava/lang/Object;
.source "PlayerPresenter.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;IZ)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;

    iput p2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;->a:I

    iput-boolean p3, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 4

    .line 1108
    invoke-interface {p1}, Lcom/mh/movie/core/androidupnp/b/i;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/PositionInfo;

    .line 1109
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;->c:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29;->a:Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->P(Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/b$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;->a:I

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackElapsedSeconds()J

    move-result-wide v2

    long-to-int p1, v2

    iget-boolean v2, p0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter$29$1;->b:Z

    invoke-interface {v0, v1, p1, v2}, Lcom/mh/movie/core/mvp/a/b/b$b;->a(IIZ)V

    return-void
.end method
