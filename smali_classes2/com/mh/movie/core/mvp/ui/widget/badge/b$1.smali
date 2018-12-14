.class Lcom/mh/movie/core/mvp/ui/widget/badge/b$1;
.super Ljava/lang/Object;
.source "BadgeAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/badge/b;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/badge/b;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/badge/b;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a(Lcom/mh/movie/core/mvp/ui/widget/badge/b;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->invalidate()V

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b$1;->a:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->cancel()V

    :goto_1
    return-void
.end method
