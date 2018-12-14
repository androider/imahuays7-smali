.class Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$k;
.super Ljava/lang/ref/WeakReference;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 965
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 966
    iput p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$k;->a:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 971
    iget v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$k;->a:I

    return v0
.end method
