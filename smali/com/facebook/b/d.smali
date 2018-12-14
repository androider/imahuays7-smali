.class public Lcom/facebook/b/d;
.super Ljava/lang/Object;
.source "DataSources.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Lcom/facebook/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/facebook/b/h;->k()Lcom/facebook/b/h;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/facebook/b/h;->a(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Lcom/facebook/common/internal/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/common/internal/j<",
            "Lcom/facebook/b/c<",
            "TT;>;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/facebook/b/d$1;

    invoke-direct {v0, p0}, Lcom/facebook/b/d$1;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
