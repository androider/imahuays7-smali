.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->s()V
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

    .line 767
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->h(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick()V
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->g(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const-string v1, "\u8bf7\u6b23\u8d4f\u5b8c\u6574\u7248"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
