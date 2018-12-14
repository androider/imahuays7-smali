.class Lmoe/codeest/enviews/ENDownloadView$1;
.super Ljava/lang/Object;
.source "ENDownloadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/codeest/enviews/ENDownloadView;->a()V
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

    .line 250
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$1;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView$1;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lmoe/codeest/enviews/ENDownloadView;->a(Lmoe/codeest/enviews/ENDownloadView;F)F

    .line 254
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$1;->a:Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {p1}, Lmoe/codeest/enviews/ENDownloadView;->invalidate()V

    return-void
.end method
