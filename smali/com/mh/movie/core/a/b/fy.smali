.class public final Lcom/mh/movie/core/a/b/fy;
.super Ljava/lang/Object;
.source "WatchedShareModule_ProvideWatchedShareViewFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/a/bl$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/fw;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/fw;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mh/movie/core/a/b/fy;->a:Lcom/mh/movie/core/a/b/fw;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/fw;)Lcom/mh/movie/core/a/b/fy;
    .locals 1

    .line 29
    new-instance v0, Lcom/mh/movie/core/a/b/fy;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fy;-><init>(Lcom/mh/movie/core/a/b/fw;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/a/bl$b;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/mh/movie/core/a/b/fy;->a:Lcom/mh/movie/core/a/b/fw;

    .line 23
    invoke-virtual {v0}, Lcom/mh/movie/core/a/b/fw;->a()Lcom/mh/movie/core/mvp/a/bl$b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bl$b;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/fy;->a()Lcom/mh/movie/core/mvp/a/bl$b;

    move-result-object v0

    return-object v0
.end method
