.class public Lorg/eclipse/jetty/server/ResourceCache$Content;
.super Ljava/lang/Object;
.source "ResourceCache.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Content"
.end annotation


# instance fields
.field final _contentType:Lorg/eclipse/jetty/io/Buffer;

.field _directBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field final _etagBuffer:Lorg/eclipse/jetty/io/Buffer;

.field _indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field final _key:Ljava/lang/String;

.field volatile _lastAccessed:J

.field final _lastModified:J

.field final _lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

.field final _length:I

.field final _resource:Lorg/eclipse/jetty/util/resource/Resource;

.field final synthetic this$0:Lorg/eclipse/jetty/server/ResourceCache;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ResourceCache;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 5

    .line 368
    iput-object p1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 364
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 369
    iput-object p2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    .line 370
    iput-object p3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 372
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$000(Lorg/eclipse/jetty/server/ResourceCache;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    .line 373
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 374
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    .line 375
    iget-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-gez v4, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    invoke-static {v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    if-eqz p2, :cond_2

    .line 377
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v1

    long-to-int p2, v1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    iput p2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    .line 378
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    iget v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 379
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    .line 382
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$300(Lorg/eclipse/jetty/server/ResourceCache;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->getWeakETag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    :cond_3
    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_etagBuffer:Lorg/eclipse/jetty/io/Buffer;

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 502
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 5

    .line 481
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 484
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/ResourceCache;->getDirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 487
    invoke-static {}, Lorg/eclipse/jetty/server/ResourceCache;->access$500()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-object v1

    .line 496
    :cond_3
    new-instance v1, Lorg/eclipse/jetty/io/View;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    return-object v1
.end method

.method public getETag()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_etagBuffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 5

    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 463
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/ResourceCache;->getIndirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 466
    invoke-static {}, Lorg/eclipse/jetty/server/ResourceCache;->access$500()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-object v1

    .line 474
    :cond_3
    new-instance v1, Lorg/eclipse/jetty/io/View;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v1

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method protected invalidate()V
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 435
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    return-void
.end method

.method public isCached()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMiss()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isValid()Z
    .locals 5

    .line 419
    iget-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    const/4 v0, 0x1

    return v0

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$400(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s %s %d %s %s"

    const/4 v1, 0x5

    .line 519
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
