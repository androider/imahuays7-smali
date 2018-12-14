.class Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ProjectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->e(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)V

    .line 624
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 632
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
