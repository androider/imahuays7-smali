.class Lio/rx_cache2/internal/b/f$1;
.super Ljava/lang/Object;
.source "GetPendingMigrations.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/b/f;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/rx_cache2/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/internal/b/f;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/b/f;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lio/rx_cache2/internal/b/f$1;->a:Lio/rx_cache2/internal/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/rx_cache2/l;Lio/rx_cache2/l;)I
    .locals 0

    .line 47
    invoke-virtual {p1}, Lio/rx_cache2/l;->a()I

    move-result p1

    invoke-virtual {p2}, Lio/rx_cache2/l;->a()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lio/rx_cache2/l;

    check-cast p2, Lio/rx_cache2/l;

    invoke-virtual {p0, p1, p2}, Lio/rx_cache2/internal/b/f$1;->a(Lio/rx_cache2/l;Lio/rx_cache2/l;)I

    move-result p1

    return p1
.end method
