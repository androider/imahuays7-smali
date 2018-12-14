.class public Lio/rx_cache2/internal/cache/memory/apache/g;
.super Lio/rx_cache2/internal/cache/memory/apache/a;
.source "EmptyIterator.java"

# interfaces
.implements Lio/rx_cache2/internal/cache/memory/apache/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/a<",
        "TE;>;",
        "Lio/rx_cache2/internal/cache/memory/apache/k<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Lio/rx_cache2/internal/cache/memory/apache/k;

.field public static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/g;

    invoke-direct {v0}, Lio/rx_cache2/internal/cache/memory/apache/g;-><init>()V

    sput-object v0, Lio/rx_cache2/internal/cache/memory/apache/g;->a:Lio/rx_cache2/internal/cache/memory/apache/k;

    .line 46
    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/g;->a:Lio/rx_cache2/internal/cache/memory/apache/k;

    sput-object v0, Lio/rx_cache2/internal/cache/memory/apache/g;->b:Ljava/util/Iterator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 65
    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/g;->b:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic hasNext()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 32
    invoke-super {p0}, Lio/rx_cache2/internal/cache/memory/apache/a;->remove()V

    return-void
.end method
