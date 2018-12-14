.class public Lcom/facebook/b/h;
.super Lcom/facebook/b/a;
.source "SimpleDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/b/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/b/a;-><init>()V

    return-void
.end method

.method public static k()Lcom/facebook/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/b/h<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/facebook/b/h;

    invoke-direct {v0}, Lcom/facebook/b/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(F)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/facebook/b/a;->a(F)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/facebook/b/a;->a(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/facebook/b/a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
