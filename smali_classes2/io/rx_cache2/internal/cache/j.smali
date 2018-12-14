.class public final Lio/rx_cache2/internal/cache/j;
.super Ljava/lang/Object;
.source "HasRecordExpired_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lio/rx_cache2/internal/cache/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lio/rx_cache2/internal/cache/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/rx_cache2/internal/cache/j;

    invoke-direct {v0}, Lio/rx_cache2/internal/cache/j;-><init>()V

    sput-object v0, Lio/rx_cache2/internal/cache/j;->a:Lio/rx_cache2/internal/cache/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/rx_cache2/internal/cache/j;
    .locals 1

    .line 19
    sget-object v0, Lio/rx_cache2/internal/cache/j;->a:Lio/rx_cache2/internal/cache/j;

    return-object v0
.end method


# virtual methods
.method public a()Lio/rx_cache2/internal/cache/i;
    .locals 1

    .line 15
    new-instance v0, Lio/rx_cache2/internal/cache/i;

    invoke-direct {v0}, Lio/rx_cache2/internal/cache/i;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/j;->a()Lio/rx_cache2/internal/cache/i;

    move-result-object v0

    return-object v0
.end method
