.class public Lio/rx_cache2/internal/cache/memory/apache/h;
.super Lio/rx_cache2/internal/cache/memory/apache/b;
.source "EmptyMapIterator.java"

# interfaces
.implements Lio/rx_cache2/internal/cache/memory/apache/j;
.implements Lio/rx_cache2/internal/cache/memory/apache/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/b<",
        "TK;TV;>;",
        "Lio/rx_cache2/internal/cache/memory/apache/j<",
        "TK;TV;>;",
        "Lio/rx_cache2/internal/cache/memory/apache/k<",
        "TK;>;"
    }
.end annotation


# static fields
.field public static final a:Lio/rx_cache2/internal/cache/memory/apache/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lio/rx_cache2/internal/cache/memory/apache/h;

    invoke-direct {v0}, Lio/rx_cache2/internal/cache/memory/apache/h;-><init>()V

    sput-object v0, Lio/rx_cache2/internal/cache/memory/apache/h;->a:Lio/rx_cache2/internal/cache/memory/apache/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lio/rx_cache2/internal/cache/memory/apache/b;-><init>()V

    return-void
.end method

.method public static b()Lio/rx_cache2/internal/cache/memory/apache/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/rx_cache2/internal/cache/memory/apache/j<",
            "TK;TV;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/h;->a:Lio/rx_cache2/internal/cache/memory/apache/j;

    return-object v0
.end method
