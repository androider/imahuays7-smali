.class Lcom/github/ybq/android/spinkit/c/d$a;
.super Lcom/github/ybq/android/spinkit/b/b;
.source "DoubleBounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic m:Lcom/github/ybq/android/spinkit/c/d;


# direct methods
.method constructor <init>(Lcom/github/ybq/android/spinkit/c/d;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/c/d$a;->m:Lcom/github/ybq/android/spinkit/c/d;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/b;-><init>()V

    const/16 p1, 0x99

    .line 36
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/d$a;->setAlpha(I)V

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/c/d$a;->c(F)V

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 6

    const/4 v0, 0x3

    .line 42
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 43
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->a([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    .line 44
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->a(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a([F)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->a()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
