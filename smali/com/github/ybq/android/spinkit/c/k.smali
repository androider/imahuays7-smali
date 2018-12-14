.class public Lcom/github/ybq/android/spinkit/c/k;
.super Lcom/github/ybq/android/spinkit/b/b;
.source "RotatingCircle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 9

    const/4 v0, 0x3

    .line 12
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 13
    new-instance v2, Lcom/github/ybq/android/spinkit/a/d;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/a/d;-><init>(Lcom/github/ybq/android/spinkit/b/f;)V

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v5, -0xb4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v3, v8

    invoke-virtual {v2, v1, v3}, Lcom/github/ybq/android/spinkit/a/d;->b([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/a/d;->c([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/a/d;->a(J)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a([F)Lcom/github/ybq/android/spinkit/a/d;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/a/d;->a()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
