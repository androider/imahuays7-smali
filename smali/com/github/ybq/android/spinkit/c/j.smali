.class public Lcom/github/ybq/android/spinkit/c/j;
.super Lcom/github/ybq/android/spinkit/b/d;
.source "PulseRing.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/d;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/c/j;->c(F)V

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x3

    .line 20
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 21
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v3, v0, [Ljava/lang/Float;

    const/4 v4, 0x0

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Lcom/github/ybq/android/spinkit/a/d;->a([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v3, 0xff

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    const/16 v3, 0xb2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->a([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->a(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f07ae14    # 0.53f

    const v4, 0x3f0f5c29    # 0.56f

    const v5, 0x3f4ccccd    # 0.8f

    .line 25
    invoke-static {v2, v3, v4, v5, v1}, Lcom/github/ybq/android/spinkit/a/a/b;->a(FFFF[F)Lcom/github/ybq/android/spinkit/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->a()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method
