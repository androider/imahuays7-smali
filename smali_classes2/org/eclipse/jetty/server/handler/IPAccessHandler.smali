.class public Lorg/eclipse/jetty/server/handler/IPAccessHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "IPAccessHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _black:Lorg/eclipse/jetty/util/IPAddressMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/IPAddressMap<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;"
        }
    .end annotation
.end field

.field _white:Lorg/eclipse/jetty/util/IPAddressMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/IPAddressMap<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-class v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 104
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 105
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 104
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 105
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    if-eqz p1, :cond_0

    .line 127
    array-length v0, p1

    if-lez v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->setWhite([Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 129
    array-length p1, p2

    if-lez p1, :cond_1

    .line 130
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->setBlack([Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    const/16 v0, 0x7c

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2f

    .line 227
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-lez v0, :cond_2

    .line 231
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, p1

    :goto_1
    if-lez v0, :cond_3

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "/*"

    :goto_2
    const-string v5, "."

    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v0, :cond_6

    const-string v5, "|"

    .line 236
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "/*."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 237
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_6
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/IPAddressMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/http/PathMap;

    if-nez v5, :cond_7

    .line 242
    new-instance v5, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v5, v2}, Lorg/eclipse/jetty/http/PathMap;-><init>(Z)V

    .line 243
    invoke-virtual {p2, v4, v5}, Lorg/eclipse/jetty/util/IPAddressMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v0, :cond_8

    const-string p2, ""

    .line 245
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 246
    invoke-virtual {v5, v0, v0}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v1, :cond_9

    .line 249
    sget-object p2, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - deprecated specification syntax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public addBlack(Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    return-void
.end method

.method public addWhite(Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    return-void
.end method

.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 337
    sget-object v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHITELIST:\n"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BLACKLIST:\n"

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/eclipse/jetty/util/IPAddressMap<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .line 370
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/IPAddressMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/util/IPAddressMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "# "

    .line 374
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    .line 376
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 378
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 187
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->isAddrUriAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x193

    .line 196
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    const/4 p1, 0x1

    .line 197
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method protected isAddrUriAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IPAddressMap;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_6

    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 292
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 294
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 296
    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/PathMap;

    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap;->size()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, p2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    return v2

    .line 306
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IPAddressMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 311
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/util/List;

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 313
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 315
    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/PathMap;

    if-eqz v0, :cond_8

    .line 316
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->size()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method protected set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/IPAddressMap;->clear()V

    if-eqz p1, :cond_0

    .line 265
    array-length v0, p1

    if-lez v0, :cond_0

    .line 267
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 269
    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlack([Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    return-void
.end method

.method public setWhite([Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    return-void
.end method
