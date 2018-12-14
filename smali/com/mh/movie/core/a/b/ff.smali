.class public final Lcom/mh/movie/core/a/b/ff;
.super Ljava/lang/Object;
.source "UserModule_ProvideRxPermissionsFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/tbruyelle/rxpermissions2/RxPermissions;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/fd;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/fd;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mh/movie/core/a/b/ff;->a:Lcom/mh/movie/core/a/b/fd;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/fd;)Lcom/mh/movie/core/a/b/ff;
    .locals 1

    .line 26
    new-instance v0, Lcom/mh/movie/core/a/b/ff;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/ff;-><init>(Lcom/mh/movie/core/a/b/fd;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tbruyelle/rxpermissions2/RxPermissions;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/mh/movie/core/a/b/ff;->a:Lcom/mh/movie/core/a/b/fd;

    .line 22
    invoke-virtual {v0}, Lcom/mh/movie/core/a/b/fd;->b()Lcom/tbruyelle/rxpermissions2/RxPermissions;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 21
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/ff;->a()Lcom/tbruyelle/rxpermissions2/RxPermissions;

    move-result-object v0

    return-object v0
.end method
