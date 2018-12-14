.class Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$2;
.super Ljava/lang/Object;
.source "DetailPlayer.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Z)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DetailPlayer;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_0
    return-void
.end method
