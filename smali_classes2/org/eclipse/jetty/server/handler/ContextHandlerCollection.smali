.class public Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;
.super Lorg/eclipse/jetty/server/handler/HandlerCollection;
.source "ContextHandlerCollection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _contextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/eclipse/jetty/server/handler/ContextHandler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _contextMap:Lorg/eclipse/jetty/http/PathMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;-><init>(Z)V

    .line 55
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-void
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "."

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public addContext(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 1

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 285
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 292
    sget-object p2, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 293
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 172
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->doStart()V

    return-void
.end method

.method public getContextClass()Ljava/lang/Class;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 184
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 187
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    const-string v3, "/"

    .line 203
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 206
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 208
    :goto_0
    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 211
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 214
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_7

    .line 216
    check-cast v3, Ljava/util/Map;

    .line 217
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    .line 221
    :goto_1
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 223
    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/server/Handler;

    .line 224
    invoke-interface {v7, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 225
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v7

    if-eqz v7, :cond_2

    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 230
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    .line 231
    :goto_2
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 233
    invoke-static {v4, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/server/Handler;

    .line 234
    invoke-interface {v6, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 235
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const-string v4, "*"

    .line 241
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 242
    :goto_3
    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 244
    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/server/Handler;

    .line 245
    invoke-interface {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 246
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 252
    :goto_4
    invoke-static {v3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 254
    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/server/Handler;

    .line 255
    invoke-interface {v5, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 256
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v5

    if-eqz v5, :cond_8

    return-void

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 265
    :cond_a
    :goto_5
    array-length v1, v0

    if-ge v2, v1, :cond_c

    .line 267
    aget-object v1, v0, v2

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 268
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    return-void

    :cond_d
    :goto_6
    return-void
.end method

.method public mapContexts()V
    .locals 13

    .line 70
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    .line 71
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_b

    .line 74
    array-length v4, v1

    if-ge v3, v4, :cond_b

    .line 78
    aget-object v4, v1, v3

    instance-of v4, v4, Lorg/eclipse/jetty/server/handler/ContextHandler;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 80
    new-array v4, v5, [Lorg/eclipse/jetty/server/Handler;

    aget-object v6, v1, v3

    aput-object v6, v4, v2

    goto :goto_1

    .line 82
    :cond_0
    aget-object v4, v1, v3

    instance-of v4, v4, Lorg/eclipse/jetty/server/HandlerContainer;

    if-eqz v4, :cond_a

    .line 84
    aget-object v4, v1, v3

    check-cast v4, Lorg/eclipse/jetty/server/HandlerContainer;

    const-class v6, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-interface {v4, v6}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    :goto_1
    const/4 v6, 0x0

    .line 89
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_a

    .line 91
    aget-object v7, v4, v6

    check-cast v7, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 93
    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    const/16 v9, 0x2c

    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_9

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v9, "/"

    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v5, :cond_4

    const-string v9, "/"

    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    const-string v9, "/*"

    .line 105
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/*"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 109
    :cond_4
    :goto_3
    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 110
    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 113
    array-length v10, v7

    if-lez v10, :cond_6

    .line 117
    instance-of v10, v9, Ljava/util/Map;

    if-eqz v10, :cond_5

    .line 118
    check-cast v9, Ljava/util/Map;

    goto :goto_4

    .line 121
    :cond_5
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "*"

    .line 122
    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v0, v8, v10}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v10

    :goto_4
    const/4 v8, 0x0

    .line 126
    :goto_5
    array-length v10, v7

    if-ge v8, v10, :cond_8

    .line 128
    aget-object v10, v7, v8

    .line 129
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 130
    aget-object v12, v1, v3

    invoke-static {v11, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 131
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 134
    :cond_6
    instance-of v7, v9, Ljava/util/Map;

    if-eqz v7, :cond_7

    .line 136
    check-cast v9, Ljava/util/Map;

    const-string v7, "*"

    .line 137
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 138
    aget-object v8, v1, v3

    invoke-static {v7, v8}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "*"

    .line 139
    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 143
    :cond_7
    aget-object v7, v1, v3

    invoke-static {v9, v7}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 144
    invoke-virtual {v0, v8, v7}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 96
    :cond_9
    :goto_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal context spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 148
    :cond_b
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    return-void
.end method

.method public setContextClass(Ljava/lang/Class;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 315
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-void

    .line 316
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setHandlers([Lorg/eclipse/jetty/server/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    .line 162
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 163
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    :cond_0
    return-void
.end method
