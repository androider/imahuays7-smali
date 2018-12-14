.class final Lcom/github/ybq/android/spinkit/b/f$4;
.super Lcom/github/ybq/android/spinkit/a/c;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ybq/android/spinkit/a/c<",
        "Lcom/github/ybq/android/spinkit/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Lcom/github/ybq/android/spinkit/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/github/ybq/android/spinkit/b/f;)Ljava/lang/Integer;
    .locals 0

    .line 340
    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/github/ybq/android/spinkit/b/f;I)V
    .locals 0

    .line 335
    invoke-virtual {p1, p2}, Lcom/github/ybq/android/spinkit/b/f;->d(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 332
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/github/ybq/android/spinkit/b/f$4;->a(Lcom/github/ybq/android/spinkit/b/f;I)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f$4;->a(Lcom/github/ybq/android/spinkit/b/f;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
