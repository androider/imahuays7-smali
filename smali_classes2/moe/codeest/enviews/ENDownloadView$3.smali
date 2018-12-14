.class Lmoe/codeest/enviews/ENDownloadView$3;
.super Ljava/lang/Object;
.source "ENDownloadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/codeest/enviews/ENDownloadView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmoe/codeest/enviews/ENDownloadView;


# direct methods
.method constructor <init>(Lmoe/codeest/enviews/ENDownloadView;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 284
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lmoe/codeest/enviews/ENDownloadView;->a(Lmoe/codeest/enviews/ENDownloadView;F)F

    .line 285
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->b(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    move-result-object p1

    sget-object v0, Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;->NONE:Lmoe/codeest/enviews/ENDownloadView$DownloadUnit;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->c(Lmoe/codeest/enviews/ENDownloadView;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    .line 286
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {v0}, Lmoe/codeest/enviews/ENDownloadView;->d(Lmoe/codeest/enviews/ENDownloadView;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {v2}, Lmoe/codeest/enviews/ENDownloadView;->c(Lmoe/codeest/enviews/ENDownloadView;)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p1, v0, v1}, Lmoe/codeest/enviews/ENDownloadView;->a(Lmoe/codeest/enviews/ENDownloadView;D)D

    .line 287
    :cond_0
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$3;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {p1}, Lmoe/codeest/enviews/ENDownloadView;->invalidate()V

    return-void
.end method
