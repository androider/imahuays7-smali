.class public final Lokio/c$a;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lokio/c;

.field public b:Z

.field public c:J

.field public d:[B

.field public e:I

.field public f:I

.field private g:Lokio/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1985
    iput-wide v0, p0, Lokio/c$a;->c:J

    const/4 v0, -0x1

    .line 1987
    iput v0, p0, Lokio/c$a;->e:I

    .line 1988
    iput v0, p0, Lokio/c$a;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 1996
    iget-wide v0, p0, Lokio/c$a;->c:J

    iget-object v2, p0, Lokio/c$a;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1997
    :cond_0
    iget-wide v0, p0, Lokio/c$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/c$a;->a(J)I

    move-result v0

    return v0

    .line 1998
    :cond_1
    iget-wide v0, p0, Lokio/c$a;->c:J

    iget v2, p0, Lokio/c$a;->f:I

    iget v3, p0, Lokio/c$a;->e:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v4, v0, v2

    invoke-virtual {p0, v4, v5}, Lokio/c$a;->a(J)I

    move-result v0

    return v0
.end method

.method public a(J)I
    .locals 12

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 2007
    iget-object v2, p0, Lokio/c$a;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->b:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_8

    .line 2012
    iget-object v0, p0, Lokio/c$a;->a:Lokio/c;

    iget-wide v0, v0, Lokio/c;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-wide/16 v0, 0x0

    .line 2023
    iget-object v2, p0, Lokio/c$a;->a:Lokio/c;

    iget-wide v2, v2, Lokio/c;->b:J

    .line 2024
    iget-object v4, p0, Lokio/c$a;->a:Lokio/c;

    iget-object v4, v4, Lokio/c;->a:Lokio/n;

    .line 2025
    iget-object v5, p0, Lokio/c$a;->a:Lokio/c;

    iget-object v5, v5, Lokio/c;->a:Lokio/n;

    .line 2026
    iget-object v6, p0, Lokio/c$a;->g:Lokio/n;

    if-eqz v6, :cond_3

    .line 2027
    iget-wide v6, p0, Lokio/c$a;->c:J

    iget v8, p0, Lokio/c$a;->e:I

    iget-object v9, p0, Lokio/c$a;->g:Lokio/n;

    iget v9, v9, Lokio/n;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long v10, v6, v8

    cmp-long v6, v10, p1

    if-lez v6, :cond_2

    .line 2031
    iget-object v5, p0, Lokio/c$a;->g:Lokio/n;

    move-wide v2, v10

    goto :goto_0

    .line 2035
    :cond_2
    iget-object v4, p0, Lokio/c$a;->g:Lokio/n;

    move-wide v0, v10

    :cond_3
    :goto_0
    const/4 v6, 0x0

    sub-long v6, v2, p1

    sub-long v8, p1, v0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 2045
    :goto_1
    iget v2, v4, Lokio/n;->c:I

    iget v3, v4, Lokio/n;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v5, v0, v2

    cmp-long v2, p1, v5

    if-ltz v2, :cond_5

    .line 2046
    iget v2, v4, Lokio/n;->c:I

    iget v3, v4, Lokio/n;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v5, v0, v2

    .line 2047
    iget-object v4, v4, Lokio/n;->f:Lokio/n;

    move-wide v0, v5

    goto :goto_1

    :cond_4
    move-wide v0, v2

    move-object v4, v5

    :goto_2
    cmp-long v2, v0, p1

    if-lez v2, :cond_5

    .line 2054
    iget-object v4, v4, Lokio/n;->g:Lokio/n;

    .line 2055
    iget v2, v4, Lokio/n;->c:I

    iget v3, v4, Lokio/n;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v5, v0, v2

    move-wide v0, v5

    goto :goto_2

    .line 2060
    :cond_5
    iget-boolean v2, p0, Lokio/c$a;->b:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v4, Lokio/n;->d:Z

    if-eqz v2, :cond_7

    .line 2061
    invoke-virtual {v4}, Lokio/n;->b()Lokio/n;

    move-result-object v2

    .line 2062
    iget-object v3, p0, Lokio/c$a;->a:Lokio/c;

    iget-object v3, v3, Lokio/c;->a:Lokio/n;

    if-ne v3, v4, :cond_6

    .line 2063
    iget-object v3, p0, Lokio/c$a;->a:Lokio/c;

    iput-object v2, v3, Lokio/c;->a:Lokio/n;

    .line 2065
    :cond_6
    invoke-virtual {v4, v2}, Lokio/n;->a(Lokio/n;)Lokio/n;

    move-result-object v4

    .line 2066
    iget-object v2, v4, Lokio/n;->g:Lokio/n;

    invoke-virtual {v2}, Lokio/n;->c()Lokio/n;

    .line 2070
    :cond_7
    iput-object v4, p0, Lokio/c$a;->g:Lokio/n;

    .line 2071
    iput-wide p1, p0, Lokio/c$a;->c:J

    .line 2072
    iget-object v2, v4, Lokio/n;->a:[B

    iput-object v2, p0, Lokio/c$a;->d:[B

    .line 2073
    iget v2, v4, Lokio/n;->b:I

    sub-long v5, p1, v0

    long-to-int p1, v5

    add-int/2addr v2, p1

    iput v2, p0, Lokio/c$a;->e:I

    .line 2074
    iget p1, v4, Lokio/n;->c:I

    iput p1, p0, Lokio/c$a;->f:I

    .line 2075
    iget p1, p0, Lokio/c$a;->f:I

    iget p2, p0, Lokio/c$a;->e:I

    sub-int/2addr p1, p2

    return p1

    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 2013
    iput-object v0, p0, Lokio/c$a;->g:Lokio/n;

    .line 2014
    iput-wide p1, p0, Lokio/c$a;->c:J

    .line 2015
    iput-object v0, p0, Lokio/c$a;->d:[B

    const/4 p1, -0x1

    .line 2016
    iput p1, p0, Lokio/c$a;->e:I

    .line 2017
    iput p1, p0, Lokio/c$a;->f:I

    return p1

    .line 2008
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "offset=%s > size=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2009
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object p2, p0, Lokio/c$a;->a:Lokio/c;

    iget-wide v3, p2, Lokio/c;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 2208
    iget-object v0, p0, Lokio/c$a;->a:Lokio/c;

    if-nez v0, :cond_0

    .line 2209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 2212
    iput-object v0, p0, Lokio/c$a;->a:Lokio/c;

    .line 2213
    iput-object v0, p0, Lokio/c$a;->g:Lokio/n;

    const-wide/16 v1, -0x1

    .line 2214
    iput-wide v1, p0, Lokio/c$a;->c:J

    .line 2215
    iput-object v0, p0, Lokio/c$a;->d:[B

    const/4 v0, -0x1

    .line 2216
    iput v0, p0, Lokio/c$a;->e:I

    .line 2217
    iput v0, p0, Lokio/c$a;->f:I

    return-void
.end method
