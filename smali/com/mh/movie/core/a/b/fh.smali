.class public final Lcom/mh/movie/core/a/b/fh;
.super Ljava/lang/Object;
.source "UserModule_ProvideUserListFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/fd;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/fd;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mh/movie/core/a/b/fh;->a:Lcom/mh/movie/core/a/b/fd;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/fd;)Lcom/mh/movie/core/a/b/fh;
    .locals 1

    .line 27
    new-instance v0, Lcom/mh/movie/core/a/b/fh;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fh;-><init>(Lcom/mh/movie/core/a/b/fd;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/mh/movie/core/a/b/fh;->a:Lcom/mh/movie/core/a/b/fd;

    .line 23
    invoke-virtual {v0}, Lcom/mh/movie/core/a/b/fd;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/fh;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
