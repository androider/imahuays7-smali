.class Lcom/facebook/cache/a/c$a$1;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"

# interfaces
.implements Lcom/facebook/common/internal/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/a/c$a;->a()Lcom/facebook/cache/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/j<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/a/c$a;


# direct methods
.method constructor <init>(Lcom/facebook/cache/a/c$a;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/facebook/cache/a/c$a$1;->a:Lcom/facebook/cache/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/facebook/cache/a/c$a$1;->a:Lcom/facebook/cache/a/c$a;

    invoke-static {v0}, Lcom/facebook/cache/a/c$a;->k(Lcom/facebook/cache/a/c$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/facebook/cache/a/c$a$1;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
