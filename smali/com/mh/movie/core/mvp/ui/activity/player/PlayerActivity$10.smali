.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$10;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->H()V
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

    .line 1924
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$10;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Z)V
    .locals 0

    .line 1928
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$10;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1930
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$10;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method
