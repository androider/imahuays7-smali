.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$2;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->y()V
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

    .line 1039
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1046
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->t(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 p3, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
