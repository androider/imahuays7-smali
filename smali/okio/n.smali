.class final Lokio/n;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lokio/n;

.field g:Lokio/n;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lokio/n;->a:[B

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lokio/n;->e:Z

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lokio/n;->d:Z

    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokio/n;->a:[B

    .line 70
    iput p2, p0, Lokio/n;->b:I

    .line 71
    iput p3, p0, Lokio/n;->c:I

    .line 72
    iput-boolean p4, p0, Lokio/n;->d:Z

    .line 73
    iput-boolean p5, p0, Lokio/n;->e:Z

    return-void
.end method


# virtual methods
.method a()Lokio/n;
    .locals 7

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lokio/n;->d:Z

    .line 83
    new-instance v0, Lokio/n;

    iget-object v2, p0, Lokio/n;->a:[B

    iget v3, p0, Lokio/n;->b:I

    iget v4, p0, Lokio/n;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/n;-><init>([BIIZZ)V

    return-object v0
.end method

.method public a(I)Lokio/n;
    .locals 5

    if-lez p1, :cond_2

    .line 125
    iget v0, p0, Lokio/n;->c:I

    iget v1, p0, Lokio/n;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x400

    if-lt p1, v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lokio/n;->a()Lokio/n;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lokio/o;->a()Lokio/n;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lokio/n;->a:[B

    iget v2, p0, Lokio/n;->b:I

    iget-object v3, v0, Lokio/n;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_0
    iget v1, v0, Lokio/n;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/n;->c:I

    .line 141
    iget v1, p0, Lokio/n;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/n;->b:I

    .line 142
    iget-object p1, p0, Lokio/n;->g:Lokio/n;

    invoke-virtual {p1, v0}, Lokio/n;->a(Lokio/n;)Lokio/n;

    return-object v0

    .line 125
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Lokio/n;)Lokio/n;
    .locals 1

    .line 109
    iput-object p0, p1, Lokio/n;->g:Lokio/n;

    .line 110
    iget-object v0, p0, Lokio/n;->f:Lokio/n;

    iput-object v0, p1, Lokio/n;->f:Lokio/n;

    .line 111
    iget-object v0, p0, Lokio/n;->f:Lokio/n;

    iput-object p1, v0, Lokio/n;->g:Lokio/n;

    .line 112
    iput-object p1, p0, Lokio/n;->f:Lokio/n;

    return-object p1
.end method

.method public a(Lokio/n;I)V
    .locals 5

    .line 163
    iget-boolean v0, p1, Lokio/n;->e:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 164
    :cond_0
    iget v0, p1, Lokio/n;->c:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3

    .line 166
    iget-boolean v0, p1, Lokio/n;->d:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 167
    :cond_1
    iget v0, p1, Lokio/n;->c:I

    add-int/2addr v0, p2

    iget v2, p1, Lokio/n;->b:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 168
    :cond_2
    iget-object v0, p1, Lokio/n;->a:[B

    iget v1, p1, Lokio/n;->b:I

    iget-object v2, p1, Lokio/n;->a:[B

    iget v3, p1, Lokio/n;->c:I

    iget v4, p1, Lokio/n;->b:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p1, Lokio/n;->c:I

    iget v1, p1, Lokio/n;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/n;->c:I

    .line 170
    iput v4, p1, Lokio/n;->b:I

    .line 173
    :cond_3
    iget-object v0, p0, Lokio/n;->a:[B

    iget v1, p0, Lokio/n;->b:I

    iget-object v2, p1, Lokio/n;->a:[B

    iget v3, p1, Lokio/n;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p1, Lokio/n;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/n;->c:I

    .line 175
    iget p1, p0, Lokio/n;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/n;->b:I

    return-void
.end method

.method b()Lokio/n;
    .locals 7

    .line 88
    new-instance v6, Lokio/n;

    iget-object v0, p0, Lokio/n;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, Lokio/n;->b:I

    iget v3, p0, Lokio/n;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lokio/n;-><init>([BIIZZ)V

    return-object v6
.end method

.method public c()Lokio/n;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lokio/n;->f:Lokio/n;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokio/n;->f:Lokio/n;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lokio/n;->g:Lokio/n;

    iget-object v3, p0, Lokio/n;->f:Lokio/n;

    iput-object v3, v2, Lokio/n;->f:Lokio/n;

    .line 98
    iget-object v2, p0, Lokio/n;->f:Lokio/n;

    iget-object v3, p0, Lokio/n;->g:Lokio/n;

    iput-object v3, v2, Lokio/n;->g:Lokio/n;

    .line 99
    iput-object v1, p0, Lokio/n;->f:Lokio/n;

    .line 100
    iput-object v1, p0, Lokio/n;->g:Lokio/n;

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 151
    iget-object v0, p0, Lokio/n;->g:Lokio/n;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lokio/n;->g:Lokio/n;

    iget-boolean v0, v0, Lokio/n;->e:Z

    if-nez v0, :cond_1

    return-void

    .line 153
    :cond_1
    iget v0, p0, Lokio/n;->c:I

    iget v1, p0, Lokio/n;->b:I

    sub-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Lokio/n;->g:Lokio/n;

    iget v1, v1, Lokio/n;->c:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lokio/n;->g:Lokio/n;

    iget-boolean v2, v2, Lokio/n;->d:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lokio/n;->g:Lokio/n;

    iget v2, v2, Lokio/n;->b:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    return-void

    .line 156
    :cond_3
    iget-object v1, p0, Lokio/n;->g:Lokio/n;

    invoke-virtual {p0, v1, v0}, Lokio/n;->a(Lokio/n;I)V

    .line 157
    invoke-virtual {p0}, Lokio/n;->c()Lokio/n;

    .line 158
    invoke-static {p0}, Lokio/o;->a(Lokio/n;)V

    return-void
.end method
