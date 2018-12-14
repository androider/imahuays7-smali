.class public Lanet/channel/strategy/utils/SerialLruCache;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    invoke-direct {p0, v0, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 20
    iput p1, p0, Lanet/channel/strategy/utils/SerialLruCache;->a:I

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lanet/channel/strategy/utils/SerialLruCache;->size()I

    move-result v0

    iget v1, p0, Lanet/channel/strategy/utils/SerialLruCache;->a:I

    if-le v0, v1, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lanet/channel/strategy/utils/SerialLruCache;->a(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
