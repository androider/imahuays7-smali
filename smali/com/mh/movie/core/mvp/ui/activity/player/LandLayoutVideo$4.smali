.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$4;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/view/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLjava/lang/String;)V
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(FFLjava/lang/String;)V

    .line 1203
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$4;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->O:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->b()V

    return-void
.end method
