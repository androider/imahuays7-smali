.class Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView$1;
.super Ljava/lang/Object;
.source "VideoLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->a(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->a(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;->b(Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoLoadingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
