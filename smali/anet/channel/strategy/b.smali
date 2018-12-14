.class Lanet/channel/strategy/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:B

.field b:J

.field c:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-byte v0, p0, Lanet/channel/strategy/b;->a:B

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lanet/channel/strategy/b;->b:J

    .line 18
    iput-wide v0, p0, Lanet/channel/strategy/b;->c:J

    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    .line 35
    iget-byte v0, p0, Lanet/channel/strategy/b;->a:B

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_0

    and-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method a(Z)V
    .locals 7

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 22
    iget-wide v2, p0, Lanet/channel/strategy/b;->b:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lanet/channel/strategy/b;->c:J

    :goto_0
    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    .line 24
    iget-byte v2, p0, Lanet/channel/strategy/b;->a:B

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v3, p1, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lanet/channel/strategy/b;->a:B

    if-eqz p1, :cond_1

    .line 26
    iput-wide v0, p0, Lanet/channel/strategy/b;->b:J

    goto :goto_1

    .line 28
    :cond_1
    iput-wide v0, p0, Lanet/channel/strategy/b;->c:J

    :cond_2
    :goto_1
    return-void
.end method

.method b()Z
    .locals 2

    .line 43
    iget-byte v0, p0, Lanet/channel/strategy/b;->a:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method c()Z
    .locals 8

    .line 47
    invoke-virtual {p0}, Lanet/channel/strategy/b;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/strategy/b;->c:J

    sub-long v6, v2, v4

    const-wide/32 v2, 0x493e0

    cmp-long v0, v6, v2

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method d()Z
    .locals 6

    .line 55
    iget-wide v0, p0, Lanet/channel/strategy/b;->b:J

    iget-wide v2, p0, Lanet/channel/strategy/b;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lanet/channel/strategy/b;->b:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lanet/channel/strategy/b;->c:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
