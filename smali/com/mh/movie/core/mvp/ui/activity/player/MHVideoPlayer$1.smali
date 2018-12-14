.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$1;
.super Ljava/lang/Object;
.source "MHVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
