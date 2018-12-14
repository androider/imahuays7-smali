.class Lcom/mh/movie/core/mvp/ui/widget/b/d$d;
.super Ljava/lang/Object;
.source "WebpFrameLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 238
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/b/d$d;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/b/d$d;->a:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 246
    instance-of v0, p1, Lcom/mh/movie/core/mvp/ui/widget/b/d$d;

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Lcom/mh/movie/core/mvp/ui/widget/b/d$d;

    .line 248
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/b/d$d;->a:Ljava/util/UUID;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/d$d;->a:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/b/d$d;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
