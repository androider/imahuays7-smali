.class Lcom/transitionseverywhere/a/a$b;
.super Lcom/transitionseverywhere/a/a$a;
.source "AnimatorUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/transitionseverywhere/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;FFFF)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/transitionseverywhere/a/e<",
            "TT;>;FFFF)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 66
    invoke-static/range {p1 .. p6}, Lcom/transitionseverywhere/a/d;->a(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;FFFF)Lcom/transitionseverywhere/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;Landroid/graphics/Path;)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/transitionseverywhere/a/e<",
            "TT;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 71
    invoke-static {p1, p2, p3}, Lcom/transitionseverywhere/a/c;->a(Ljava/lang/Object;Lcom/transitionseverywhere/a/e;Landroid/graphics/Path;)Lcom/transitionseverywhere/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method public c(Landroid/animation/Animator;)Z
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    return p1
.end method
