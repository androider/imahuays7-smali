.class public Lcom/github/ybq/android/spinkit/c/d;
.super Lcom/github/ybq/android/spinkit/b/g;
.source "DoubleBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/c/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/b/g;->a([Lcom/github/ybq/android/spinkit/b/f;)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 27
    aget-object p1, p1, v1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/b/f;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    goto :goto_0

    .line 29
    :cond_0
    aget-object p1, p1, v1

    const/16 v0, -0x3e8

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/b/f;->g(I)Lcom/github/ybq/android/spinkit/b/f;

    :goto_0
    return-void
.end method

.method public s()[Lcom/github/ybq/android/spinkit/b/f;
    .locals 3

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/github/ybq/android/spinkit/b/f;

    new-instance v1, Lcom/github/ybq/android/spinkit/c/d$a;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/c/d$a;-><init>(Lcom/github/ybq/android/spinkit/c/d;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/c/d$a;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/c/d$a;-><init>(Lcom/github/ybq/android/spinkit/c/d;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
