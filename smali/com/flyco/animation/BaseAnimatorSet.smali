.class public abstract Lcom/flyco/animation/BaseAnimatorSet;
.super Ljava/lang/Object;
.source "BaseAnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;
    }
.end annotation


# instance fields
.field protected animatorSet:Landroid/animation/AnimatorSet;

.field private delay:J

.field protected duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private listener:Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 10
    iput-wide v0, p0, Lcom/flyco/animation/BaseAnimatorSet;->duration:J

    .line 11
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/flyco/animation/BaseAnimatorSet;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$000(Lcom/flyco/animation/BaseAnimatorSet;)Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/flyco/animation/BaseAnimatorSet;->listener:Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;

    return-object p0
.end method

.method public static reset(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method


# virtual methods
.method public delay(J)Lcom/flyco/animation/BaseAnimatorSet;
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->delay:J

    return-object p0
.end method

.method public duration(J)Lcom/flyco/animation/BaseAnimatorSet;
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->duration:J

    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/flyco/animation/BaseAnimatorSet;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public listener(Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;)Lcom/flyco/animation/BaseAnimatorSet;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->listener:Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;

    return-object p0
.end method

.method public playOn(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/flyco/animation/BaseAnimatorSet;->start(Landroid/view/View;)V

    return-void
.end method

.method public abstract setAnimation(Landroid/view/View;)V
.end method

.method protected start(Landroid/view/View;)V
    .locals 4

    .line 22
    invoke-static {p1}, Lcom/flyco/animation/BaseAnimatorSet;->reset(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/flyco/animation/BaseAnimatorSet;->setAnimation(Landroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->animatorSet:Landroid/animation/AnimatorSet;

    iget-wide v0, p0, Lcom/flyco/animation/BaseAnimatorSet;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 26
    iget-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/flyco/animation/BaseAnimatorSet;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    :cond_0
    iget-wide v0, p0, Lcom/flyco/animation/BaseAnimatorSet;->delay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->animatorSet:Landroid/animation/AnimatorSet;

    iget-wide v0, p0, Lcom/flyco/animation/BaseAnimatorSet;->delay:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->listener:Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;

    if-eqz p1, :cond_2

    .line 35
    iget-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/flyco/animation/BaseAnimatorSet$1;

    invoke-direct {v0, p0}, Lcom/flyco/animation/BaseAnimatorSet$1;-><init>(Lcom/flyco/animation/BaseAnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/flyco/animation/BaseAnimatorSet;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
