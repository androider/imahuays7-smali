.class Lcom/mh/movie/core/mvp/ui/widget/badge/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BadgeAnimator.java"


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

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b$2;->a:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/badge/b$2;->a:Lcom/mh/movie/core/mvp/ui/widget/badge/b;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/b;->a(Lcom/mh/movie/core/mvp/ui/widget/badge/b;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/badge/QBadgeView;->b()V

    :cond_0
    return-void
.end method
