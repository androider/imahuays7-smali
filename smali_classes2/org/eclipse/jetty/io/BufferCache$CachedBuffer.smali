.class public Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
.super Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
.source "BufferCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/BufferCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedBuffer"
.end annotation


# instance fields
.field private _associateMap:Ljava/util/HashMap;

.field private final _ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    .line 135
    iput p2, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_ordinal:I

    return-void
.end method


# virtual methods
.method public getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    return-object p1
.end method

.method public getOrdinal()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_ordinal:I

    return v0
.end method

.method public setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->_associateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
