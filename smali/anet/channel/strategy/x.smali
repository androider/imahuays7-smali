.class Lanet/channel/strategy/x;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lanet/channel/strategy/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/strategy/k;


# direct methods
.method constructor <init>(Lanet/channel/strategy/k;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lanet/channel/strategy/x;->a:Lanet/channel/strategy/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/strategy/d;Lanet/channel/strategy/d;)I
    .locals 4

    .line 175
    iget-object v0, p0, Lanet/channel/strategy/x;->a:Lanet/channel/strategy/k;

    invoke-static {v0}, Lanet/channel/strategy/k;->a(Lanet/channel/strategy/k;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lanet/channel/strategy/d;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/b;

    .line 176
    iget-object v1, p0, Lanet/channel/strategy/x;->a:Lanet/channel/strategy/k;

    invoke-static {v1}, Lanet/channel/strategy/k;->a(Lanet/channel/strategy/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lanet/channel/strategy/d;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/b;

    .line 178
    invoke-virtual {v0}, Lanet/channel/strategy/b;->a()I

    move-result v0

    .line 179
    invoke-virtual {v1}, Lanet/channel/strategy/b;->a()I

    move-result v1

    .line 182
    iget v2, p1, Lanet/channel/strategy/d;->h:I

    add-int/2addr v2, v0

    .line 183
    iget v3, p2, Lanet/channel/strategy/d;->h:I

    add-int/2addr v3, v1

    if-eq v2, v3, :cond_0

    sub-int/2addr v2, v3

    return v2

    :cond_0
    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    .line 190
    :cond_1
    iget-object p1, p1, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    iget p1, p1, Lanet/channel/strategy/ConnProtocol;->a:I

    iget-object p2, p2, Lanet/channel/strategy/d;->c:Lanet/channel/strategy/ConnProtocol;

    iget p2, p2, Lanet/channel/strategy/ConnProtocol;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 172
    check-cast p1, Lanet/channel/strategy/d;

    check-cast p2, Lanet/channel/strategy/d;

    invoke-virtual {p0, p1, p2}, Lanet/channel/strategy/x;->a(Lanet/channel/strategy/d;Lanet/channel/strategy/d;)I

    move-result p1

    return p1
.end method
