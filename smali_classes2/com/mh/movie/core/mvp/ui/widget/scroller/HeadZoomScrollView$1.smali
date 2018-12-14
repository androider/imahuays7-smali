.class Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$1;
.super Ljava/lang/Object;
.source "HeadZoomScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;->a(Lcom/mh/movie/core/mvp/ui/widget/scroller/HeadZoomScrollView;F)V

    return-void
.end method
