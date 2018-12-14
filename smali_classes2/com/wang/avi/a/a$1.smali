.class Lcom/wang/avi/a/a$1;
.super Ljava/lang/Object;
.source "BallPulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wang/avi/a/a;->a()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/wang/avi/a/a;


# direct methods
.method constructor <init>(Lcom/wang/avi/a/a;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/wang/avi/a/a$1;->b:Lcom/wang/avi/a/a;

    iput p2, p0, Lcom/wang/avi/a/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/wang/avi/a/a$1;->b:Lcom/wang/avi/a/a;

    invoke-static {v0}, Lcom/wang/avi/a/a;->a(Lcom/wang/avi/a/a;)[F

    move-result-object v0

    iget v1, p0, Lcom/wang/avi/a/a$1;->a:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 58
    iget-object p1, p0, Lcom/wang/avi/a/a$1;->b:Lcom/wang/avi/a/a;

    invoke-virtual {p1}, Lcom/wang/avi/a/a;->b()V

    return-void
.end method
