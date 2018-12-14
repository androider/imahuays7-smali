.class public interface abstract Lcom/jess/arms/integration/cache/CacheType;
.super Ljava/lang/Object;
.source "CacheType.java"


# static fields
.field public static final ACTIVITY_CACHE:Lcom/jess/arms/integration/cache/CacheType;

.field public static final ACTIVITY_CACHE_TYPE_ID:I = 0x3

.field public static final CACHE_SERVICE_CACHE:Lcom/jess/arms/integration/cache/CacheType;

.field public static final CACHE_SERVICE_CACHE_TYPE_ID:I = 0x1

.field public static final EXTRAS:Lcom/jess/arms/integration/cache/CacheType;

.field public static final EXTRAS_TYPE_ID:I = 0x2

.field public static final FRAGMENT_CACHE:Lcom/jess/arms/integration/cache/CacheType;

.field public static final FRAGMENT_CACHE_TYPE_ID:I = 0x4

.field public static final RETROFIT_SERVICE_CACHE:Lcom/jess/arms/integration/cache/CacheType;

.field public static final RETROFIT_SERVICE_CACHE_TYPE_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/jess/arms/integration/cache/CacheType$1;

    invoke-direct {v0}, Lcom/jess/arms/integration/cache/CacheType$1;-><init>()V

    sput-object v0, Lcom/jess/arms/integration/cache/CacheType;->RETROFIT_SERVICE_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    .line 69
    new-instance v0, Lcom/jess/arms/integration/cache/CacheType$2;

    invoke-direct {v0}, Lcom/jess/arms/integration/cache/CacheType$2;-><init>()V

    sput-object v0, Lcom/jess/arms/integration/cache/CacheType;->CACHE_SERVICE_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    .line 92
    new-instance v0, Lcom/jess/arms/integration/cache/CacheType$3;

    invoke-direct {v0}, Lcom/jess/arms/integration/cache/CacheType$3;-><init>()V

    sput-object v0, Lcom/jess/arms/integration/cache/CacheType;->EXTRAS:Lcom/jess/arms/integration/cache/CacheType;

    .line 115
    new-instance v0, Lcom/jess/arms/integration/cache/CacheType$4;

    invoke-direct {v0}, Lcom/jess/arms/integration/cache/CacheType$4;-><init>()V

    sput-object v0, Lcom/jess/arms/integration/cache/CacheType;->ACTIVITY_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    .line 138
    new-instance v0, Lcom/jess/arms/integration/cache/CacheType$5;

    invoke-direct {v0}, Lcom/jess/arms/integration/cache/CacheType$5;-><init>()V

    sput-object v0, Lcom/jess/arms/integration/cache/CacheType;->FRAGMENT_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    return-void
.end method


# virtual methods
.method public abstract calculateCacheSize(Landroid/content/Context;)I
.end method

.method public abstract getCacheTypeId()I
.end method
