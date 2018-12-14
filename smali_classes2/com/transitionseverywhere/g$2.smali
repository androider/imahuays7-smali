.class Lcom/transitionseverywhere/g$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/g;->a(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transitionseverywhere/g;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/g;)V
    .locals 0

    .line 1865
    iput-object p1, p0, Lcom/transitionseverywhere/g$2;->a:Lcom/transitionseverywhere/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1868
    iget-object v0, p0, Lcom/transitionseverywhere/g$2;->a:Lcom/transitionseverywhere/g;

    invoke-virtual {v0}, Lcom/transitionseverywhere/g;->g()V

    .line 1869
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
