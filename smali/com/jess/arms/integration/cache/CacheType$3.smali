.class final Lcom/jess/arms/integration/cache/CacheType$3;
.super Ljava/lang/Object;
.source "CacheType.java"

# interfaces
.implements Lcom/jess/arms/integration/cache/CacheType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jess/arms/integration/cache/CacheType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateCacheSize(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 104
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3ba3d70a    # 0.005f

    mul-float p1, p1, v0

    const/high16 v0, 0x44800000    # 1024.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public getCacheTypeId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
