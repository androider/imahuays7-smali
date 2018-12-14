.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r()V
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

    .line 730
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    .line 749
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->f(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h()V
    .locals 4

    .line 734
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    .line 736
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const-string v1, "\u8bf7\u6b23\u8d4f\u5b8c\u6574\u7248"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 743
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->e(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
