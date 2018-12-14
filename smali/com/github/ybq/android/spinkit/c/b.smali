.class public Lcom/github/ybq/android/spinkit/c/b;
.super Lcom/github/ybq/android/spinkit/b/a;
.source "Circle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public s()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 4

    const/16 v0, 0xc

    .line 18
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/c/b$a;

    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 20
    new-instance v2, Lcom/github/ybq/android/spinkit/c/b$a;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/c/b$a;-><init>(Lcom/github/ybq/android/spinkit/c/b;)V

    aput-object v2, v0, v1

    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 22
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/c/b$a;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    goto :goto_1

    .line 24
    :cond_0
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, -0x4b0

    invoke-virtual {v2, v3}, Lcom/github/ybq/android/spinkit/c/b$a;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
