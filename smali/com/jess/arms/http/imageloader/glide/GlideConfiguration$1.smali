.class Lcom/jess/arms/http/imageloader/glide/GlideConfiguration$1;
.super Ljava/lang/Object;
.source "GlideConfiguration.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jess/arms/http/imageloader/glide/GlideConfiguration;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jess/arms/b/a/a;

.field final synthetic b:Lcom/jess/arms/http/imageloader/glide/GlideConfiguration;


# direct methods
.method constructor <init>(Lcom/jess/arms/http/imageloader/glide/GlideConfiguration;Lcom/jess/arms/b/a/a;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jess/arms/http/imageloader/glide/GlideConfiguration$1;->b:Lcom/jess/arms/http/imageloader/glide/GlideConfiguration;

    iput-object p2, p0, Lcom/jess/arms/http/imageloader/glide/GlideConfiguration$1;->a:Lcom/jess/arms/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 3

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jess/arms/http/imageloader/glide/GlideConfiguration$1;->a:Lcom/jess/arms/b/a/a;

    invoke-interface {v1}, Lcom/jess/arms/b/a/a;->h()Ljava/io/File;

    move-result-object v1

    const-string v2, "Glide"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jess/arms/c/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    const-wide/32 v1, 0x6400000

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->create(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    return-object v0
.end method
