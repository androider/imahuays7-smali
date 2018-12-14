.class public Lorg/eclipse/jetty/io/ThreadLocalBuffers;
.super Lorg/eclipse/jetty/io/AbstractBuffers;
.source "ThreadLocalBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    }
.end annotation


# instance fields
.field private final _buffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jetty/io/AbstractBuffers;-><init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V

    .line 31
    new-instance p1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;

    invoke-direct {p1, p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;-><init>(Lorg/eclipse/jetty/io/ThreadLocalBuffers;)V

    iput-object p1, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 50
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 53
    iput-object v2, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v1

    .line 57
    :cond_0
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    .line 60
    iput-object v2, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    return-object v1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->newBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 92
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 94
    iget-object p1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    .line 95
    iput-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    return-object p1

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->newBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 71
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 74
    iput-object v2, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    return-object v1

    .line 78
    :cond_0
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isHeader(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    .line 81
    iput-object v2, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    return-object v1

    .line 85
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->newHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .line 105
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 106
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 111
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isHeader(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iput-object p1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iput-object p1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 116
    :cond_2
    iput-object p1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->getHeaderSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->getBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
