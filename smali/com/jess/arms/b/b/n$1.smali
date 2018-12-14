.class Lcom/jess/arms/b/b/n$1;
.super Ljava/lang/Object;
.source "GlobalConfigModule.java"

# interfaces
.implements Lcom/jess/arms/integration/cache/Cache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jess/arms/b/b/n;->b(Landroid/app/Application;)Lcom/jess/arms/integration/cache/Cache$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/jess/arms/b/b/n;


# direct methods
.method constructor <init>(Lcom/jess/arms/b/b/n;Landroid/app/Application;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/jess/arms/b/b/n$1;->b:Lcom/jess/arms/b/b/n;

    iput-object p2, p0, Lcom/jess/arms/b/b/n$1;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/jess/arms/integration/cache/CacheType;)Lcom/jess/arms/integration/cache/Cache;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 221
    invoke-interface {p1}, Lcom/jess/arms/integration/cache/CacheType;->getCacheTypeId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 229
    new-instance v0, Lcom/jess/arms/integration/cache/LruCache;

    iget-object v1, p0, Lcom/jess/arms/b/b/n$1;->a:Landroid/app/Application;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/cache/CacheType;->calculateCacheSize(Landroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/jess/arms/integration/cache/LruCache;-><init>(I)V

    return-object v0

    .line 226
    :pswitch_0
    new-instance v0, Lcom/jess/arms/integration/cache/IntelligentCache;

    iget-object v1, p0, Lcom/jess/arms/b/b/n$1;->a:Landroid/app/Application;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/cache/CacheType;->calculateCacheSize(Landroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/jess/arms/integration/cache/IntelligentCache;-><init>(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
