.class public final Lorg/apache/httpcore/d/m;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lorg/apache/httpcore/d/h;


# instance fields
.field private final a:[Lorg/apache/httpcore/p;

.field private final b:[Lorg/apache/httpcore/s;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/httpcore/p;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/httpcore/s;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    new-array v1, v1, [Lorg/apache/httpcore/p;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/httpcore/p;

    iput-object p1, p0, Lorg/apache/httpcore/d/m;->a:[Lorg/apache/httpcore/p;

    goto :goto_0

    .line 82
    :cond_0
    new-array p1, v0, [Lorg/apache/httpcore/p;

    iput-object p1, p0, Lorg/apache/httpcore/d/m;->a:[Lorg/apache/httpcore/p;

    :goto_0
    if-eqz p2, :cond_1

    .line 85
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 86
    new-array p1, p1, [Lorg/apache/httpcore/s;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/httpcore/s;

    iput-object p1, p0, Lorg/apache/httpcore/d/m;->b:[Lorg/apache/httpcore/s;

    goto :goto_1

    .line 88
    :cond_1
    new-array p1, v0, [Lorg/apache/httpcore/s;

    iput-object p1, p0, Lorg/apache/httpcore/d/m;->b:[Lorg/apache/httpcore/s;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/d/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/httpcore/d/m;->a:[Lorg/apache/httpcore/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 133
    invoke-interface {v3, p1, p2}, Lorg/apache/httpcore/p;->a(Lorg/apache/httpcore/n;Lorg/apache/httpcore/d/d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/httpcore/d/m;->b:[Lorg/apache/httpcore/s;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 142
    invoke-interface {v3, p1, p2}, Lorg/apache/httpcore/s;->a(Lorg/apache/httpcore/q;Lorg/apache/httpcore/d/d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
