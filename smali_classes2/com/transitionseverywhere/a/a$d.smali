.class Lcom/transitionseverywhere/a/a$d;
.super Lcom/transitionseverywhere/a/a$c;
.source "AnimatorUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/transitionseverywhere/a/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator;)V
    .locals 0

    .line 121
    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    return-void
.end method

.method public a(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    .line 116
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 0

    .line 126
    invoke-virtual {p1}, Landroid/animation/Animator;->resume()V

    return-void
.end method
