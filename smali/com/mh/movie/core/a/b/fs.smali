.class public final Lcom/mh/movie/core/a/b/fs;
.super Ljava/lang/Object;
.source "VipTvModule_ProvideVipTvViewFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/a/bj$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/fq;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/fq;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mh/movie/core/a/b/fs;->a:Lcom/mh/movie/core/a/b/fq;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/fq;)Lcom/mh/movie/core/a/b/fs;
    .locals 1

    .line 26
    new-instance v0, Lcom/mh/movie/core/a/b/fs;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fs;-><init>(Lcom/mh/movie/core/a/b/fq;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/a/bj$b;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/mh/movie/core/a/b/fs;->a:Lcom/mh/movie/core/a/b/fq;

    .line 22
    invoke-virtual {v0}, Lcom/mh/movie/core/a/b/fq;->a()Lcom/mh/movie/core/mvp/a/bj$b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 21
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bj$b;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/fs;->a()Lcom/mh/movie/core/mvp/a/bj$b;

    move-result-object v0

    return-object v0
.end method
