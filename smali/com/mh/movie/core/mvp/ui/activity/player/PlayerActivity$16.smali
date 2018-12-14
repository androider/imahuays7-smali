.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;
.super Lcom/mh/movie/core/mvp/ui/widget/a/a;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    .line 2030
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 2034
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ak(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2035
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->al(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ak(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(II)V

    return-void
.end method

.method protected b()V
    .locals 3

    .line 2040
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->am(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->an(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    return-void

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ao(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->am(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(II)V

    return-void
.end method
