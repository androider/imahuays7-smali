.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$3;
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

    .line 1061
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1064
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->u(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    float-to-double p2, p2

    double-to-float p2, p2

    .line 1068
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1069
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$3;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->v(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

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
