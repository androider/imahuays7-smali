.class public Lorg/eclipse/jetty/io/View;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/View$CaseInsensitive;
    }
.end annotation


# instance fields
.field _buffer:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .line 51
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 52
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 53
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 54
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 55
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 56
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lorg/eclipse/jetty/io/View;->_access:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;IIII)V
    .locals 2

    .line 41
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 42
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 43
    invoke-virtual {p0, p4}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 44
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 45
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 46
    iput p5, p0, Lorg/eclipse/jetty/io/View;->_access:I

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public buffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, -0x1

    .line 120
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    return-void
.end method

.method public compact()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_2

    .line 143
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isReadOnly()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result p1

    return p1
.end method

.method public peek(I[BII)I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/Buffer;->peek(I[BII)I

    move-result p1

    return p1
.end method

.method public peek(II)Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/Buffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    move-result p1

    return p1
.end method

.method public poke(I[BII)I
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    move-result p1

    return p1
.end method

.method public poke(IB)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    const-string v0, "INVALID"

    return-object v0

    .line 225
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(II)V
    .locals 2

    .line 80
    iget v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    const/4 v1, 0x2

    .line 81
    iput v1, p0, Lorg/eclipse/jetty/io/View;->_access:I

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 83
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 84
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    const/4 p1, -0x1

    .line 85
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 86
    iput v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    return-void
.end method

.method public update(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    .line 70
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/io/View;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 72
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 73
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 74
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 75
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lorg/eclipse/jetty/io/View;->_access:I

    return-void
.end method
