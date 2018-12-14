.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->v()V
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

    .line 2638
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2642
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object v0

    .line 2643
    iget v1, v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2644
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2646
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_2

    .line 2647
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 2651
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_2

    .line 2652
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
