.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;


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

    .line 2571
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 2574
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    sget v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->f:I

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(II)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IIZ)V
    .locals 0

    .line 2579
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iput p2, p4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    .line 2580
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object p4, p4, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p4, p2}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c(I)V

    .line 2581
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p3, p4}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V

    return-void
.end method
