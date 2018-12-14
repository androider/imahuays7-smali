.class public Lorg/eclipse/jetty/server/handler/ContextHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ContextHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Server$Graceful;
.implements Lorg/eclipse/jetty/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$ApprovePathPrefixAliases;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveSameSuffixAliases;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;,
        Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final MANAGED_ATTRIBUTES:Ljava/lang/String; = "org.eclipse.jetty.server.context.ManagedAttributes"

.field private static final __AVAILABLE:I = 0x1

.field private static final __SHUTDOWN:I = 0x2

.field private static final __STOPPED:I = 0x0

.field private static final __UNAVAILABLE:I = 0x3

.field private static final __context:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;",
            ">;"
        }
    .end annotation
.end field

.field private _aliases:Z

.field private _allowNullPathInfo:Z

.field private final _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private volatile _availability:I

.field private _available:Z

.field private _baseResource:Lorg/eclipse/jetty/util/resource/Resource;

.field private _classLoader:Ljava/lang/ClassLoader;

.field private _compactPath:Z

.field private _connectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextAttributeListeners:Ljava/lang/Object;

.field private final _contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _contextListeners:Ljava/lang/Object;

.field private _contextPath:Ljava/lang/String;

.field private _displayName:Ljava/lang/String;

.field private _durableListeners:Ljava/lang/Object;

.field private _errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

.field private _eventListeners:[Ljava/util/EventListener;

.field private final _initParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _localeEncodingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _logger:Lorg/eclipse/jetty/util/log/Logger;

.field private _managedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _maxFormContentSize:I

.field private _maxFormKeys:I

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _protectedTargets:[Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestListeners:Ljava/lang/Object;

.field protected _scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _shutdown:Z

.field private _vhosts:[Ljava/lang/String;

.field private _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 105
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    const-string v0, "/"

    .line 131
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    const/4 v1, -0x1

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 146
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 155
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 170
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 171
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 172
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 174
    new-instance v0, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 198
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>()V

    .line 208
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 209
    instance-of p2, p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz p2, :cond_0

    .line 210
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    goto :goto_0

    .line 211
    :cond_0
    instance-of p2, p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    if-eqz p2, :cond_1

    .line 212
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V
    .locals 2

    .line 183
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    const-string v0, "/"

    .line 131
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    const/4 v1, -0x1

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    .line 146
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    .line 155
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 184
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 185
    new-instance p1, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {p1}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 186
    new-instance p1, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {p1}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 187
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    .line 188
    new-instance p1, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;

    invoke-direct {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$ApproveNonExistentDirectoryAliases;-><init>()V

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/http/MimeTypes;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object p0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 101
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object p0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object p0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/ContextHandler;)Lorg/eclipse/jetty/util/AttributesMap;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object p0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/Object;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/server/handler/ContextHandler;)Ljava/lang/ClassLoader;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .line 122
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "."

    .line 1675
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1676
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
.method public addAliasCheck(Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;)V
    .locals 1

    .line 1688
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2

    .line 596
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    .line 599
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v0

    const-class v1, Ljava/util/EventListener;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/EventListener;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    return-void
.end method

.method public addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1534
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    .line 1536
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVirtualHosts([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 316
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 318
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 321
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    return-void
.end method

.method public callContextDestroyed(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 0

    .line 788
    invoke-interface {p1, p2}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    return-void
.end method

.method public callContextInitialized(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 0

    .line 782
    invoke-interface {p1, p2}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    return-void
.end method

.method public checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 859
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v0

    .line 861
    iget v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 871
    sget-object v1, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v1, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 876
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 878
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 883
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v4, v4

    if-ge v10, v4, :cond_3

    .line 885
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v4, v4, v10

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "*."

    .line 888
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v1, "."

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v9, v1, -0x2

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    goto :goto_1

    .line 894
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    return v2

    .line 901
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 903
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 904
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    return v2

    .line 909
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 912
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 914
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_8

    return v2

    .line 918
    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_a

    .line 921
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 922
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 923
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_2

    .line 925
    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-static {p1, p2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_a
    return v3

    .line 867
    :pswitch_0
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    const/16 p1, 0x1f7

    .line 868
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return v2

    :cond_b
    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1254
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 3

    .line 1242
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1243
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 1246
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1248
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1055
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v0

    .line 1056
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->takeNewContext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1062
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1064
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 1066
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v5, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EventListener;

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->addEventListener(Ljava/util/EventListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1069
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1071
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .line 1072
    new-instance v4, Ljavax/servlet/ServletRequestEvent;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v4, v5, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1074
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v5, v3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/servlet/ServletRequestListener;

    invoke-interface {v5, v4}, Ljavax/servlet/ServletRequestListener;->requestInitialized(Ljavax/servlet/ServletRequestEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 1078
    :cond_1
    sget-object v2, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v2, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isProtectedTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    new-instance p1, Lorg/eclipse/jetty/http/HttpException;

    const/16 v0, 0x194

    invoke-direct {p1, v0}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw p1

    .line 1083
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1084
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 1085
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-ne v0, v2, :cond_4

    .line 1086
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 1087
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_5

    .line 1088
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    .line 1102
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 1104
    new-instance p1, Ljavax/servlet/ServletRequestEvent;

    iget-object p4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p1, p4, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1105
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p3

    :goto_3
    add-int/lit8 p4, p3, -0x1

    if-lez p3, :cond_6

    .line 1106
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {p3, p4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/servlet/ServletRequestListener;

    invoke-interface {p3, p1}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move p3, p4

    goto :goto_3

    .line 1109
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 1111
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p1

    :goto_4
    add-int/lit8 p3, p1, -0x1

    if-lez p1, :cond_8

    .line 1112
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {p1, p3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EventListener;

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move p1, p3

    goto :goto_4

    .line 1093
    :goto_5
    :try_start_1
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 1094
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 1095
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    .line 1102
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 1104
    new-instance p1, Ljavax/servlet/ServletRequestEvent;

    iget-object p4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p1, p4, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1105
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p3

    :goto_6
    add-int/lit8 p4, p3, -0x1

    if-lez p3, :cond_7

    .line 1106
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {p3, p4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/servlet/ServletRequestListener;

    invoke-interface {p3, p1}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move p3, p4

    goto :goto_6

    .line 1109
    :cond_7
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 1111
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p1

    :goto_7
    add-int/lit8 p3, p1, -0x1

    if-lez p1, :cond_8

    .line 1112
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {p1, p3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EventListener;

    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move p1, p3

    goto :goto_7

    :cond_8
    return-void

    :goto_8
    if-eqz v1, :cond_a

    .line 1102
    iget-object p4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    if-eqz p4, :cond_9

    .line 1104
    new-instance p4, Ljavax/servlet/ServletRequestEvent;

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p4, v0, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 1105
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p3

    :goto_9
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_9

    .line 1106
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {p3, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/servlet/ServletRequestListener;

    invoke-interface {p3, p4}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    move p3, v0

    goto :goto_9

    .line 1109
    :cond_9
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz p3, :cond_a

    .line 1111
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p3

    :goto_a
    add-int/lit8 p4, p3, -0x1

    if-lez p3, :cond_a

    .line 1112
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {p3, p4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/EventListener;

    invoke-virtual {p2, p3}, Lorg/eclipse/jetty/server/Request;->removeEventListener(Ljava/util/EventListener;)V

    move p3, p4

    goto :goto_a

    :cond_a
    throw p1
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 941
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eqz v5, :cond_0

    .line 942
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "scope {}|{}|{} @ {}"

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    aput-object v1, v12, v6

    invoke-interface {v5, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v5

    .line 954
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v11

    .line 957
    iget-object v12, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v11, v12, :cond_8

    .line 960
    sget-object v12, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v12, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v12, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    invoke-virtual {v12, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jetty/server/AsyncContinuation;->isExpired()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v12, p1

    :cond_2
    :goto_0
    move-object v14, v12

    goto :goto_3

    .line 962
    :cond_3
    :goto_1
    iget-boolean v12, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    if-eqz v12, :cond_4

    .line 963
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_4
    move-object/from16 v12, p1

    .line 964
    :goto_2
    invoke-virtual {v1, v12, v2, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkContext(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v14

    if-nez v14, :cond_5

    return-void

    .line 967
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    iget-object v15, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_6

    .line 969
    iget-object v14, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v10, :cond_2

    .line 970
    iget-object v14, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 973
    :cond_6
    iget-object v12, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v10, :cond_7

    const-string v12, "/"

    const-string v14, "/"

    goto :goto_3

    :cond_7
    const-string v12, "/"

    const/4 v14, 0x0

    .line 986
    :goto_3
    iget-object v15, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v15, :cond_9

    .line 988
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    .line 989
    invoke-virtual {v15}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    .line 990
    iget-object v6, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v15, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    move-object/from16 v6, v16

    goto :goto_4

    :cond_8
    move-object/from16 v12, p1

    move-object v14, v12

    :cond_9
    const/4 v6, 0x0

    const/4 v15, 0x0

    .line 996
    :goto_4
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 997
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 998
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1001
    :try_start_3
    iget-object v13, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2, v13}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1002
    sget-object v13, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v10, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v13, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1003
    sget-object v10, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {v10, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "/"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1005
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_a

    const-string v5, ""

    .line 1006
    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    goto :goto_5

    .line 1008
    :cond_a
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    :goto_5
    const/4 v5, 0x0

    .line 1009
    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v2, v14}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 1013
    :cond_b
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1014
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "context={}|{}|{} @ {}"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v13, v16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v13, v16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v13, v16

    const/4 v14, 0x3

    aput-object v1, v13, v14

    invoke-interface {v5, v10, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->never()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1018
    invoke-virtual {v1, v12, v2, v3, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_6

    .line 1019
    :cond_d
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v5, :cond_e

    .line 1020
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v5, v12, v2, v3, v4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_6

    .line 1021
    :cond_e
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v5, :cond_f

    .line 1022
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v5, v12, v2, v3, v4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_6

    .line 1024
    :cond_f
    invoke-virtual {v1, v12, v2, v3, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1029
    :goto_6
    iget-object v3, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v11, v3, :cond_11

    .line 1032
    iget-object v3, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_10

    .line 1034
    invoke-virtual {v15, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1038
    :cond_10
    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1039
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1040
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v2, v8}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v9, v5

    goto :goto_8

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v8, v5

    goto :goto_7

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v7, v5

    move-object v8, v7

    :goto_7
    move-object v9, v8

    .line 1029
    :goto_8
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v11, v4, :cond_13

    .line 1032
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_12

    .line 1034
    invoke-virtual {v15, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1038
    :cond_12
    invoke-virtual {v2, v11}, Lorg/eclipse/jetty/server/Request;->setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 1039
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1040
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v2, v8}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_13
    throw v3
.end method

.method protected doStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 690
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 692
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null contextPath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v0, 0x0

    .line 703
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_2

    .line 705
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 706
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_3

    :cond_2
    move-object v1, v0

    move-object v2, v1

    .line 710
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v3, :cond_3

    .line 711
    new-instance v3, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v3}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 713
    :cond_3
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 714
    :try_start_3
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 717
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->startContext()V

    .line 719
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 721
    :try_start_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 722
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 726
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 729
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_6

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    .line 722
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_3

    :catchall_3
    move-exception v3

    goto :goto_3

    :catchall_4
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    .line 726
    :goto_3
    sget-object v4, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 729
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    .line 731
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_7
    throw v3
.end method

.method protected doStop()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 798
    iput v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 803
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 804
    sget-object v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 808
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_0

    .line 810
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 811
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto/16 :goto_3

    :cond_0
    move-object v4, v3

    move-object v5, v4

    .line 815
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 818
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 820
    new-instance v6, Ljavax/servlet/ServletContextEvent;

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v6, v7}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 821
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    :goto_1
    add-int/lit8 v8, v7, -0x1

    if-lez v7, :cond_1

    .line 823
    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletContextListener;

    invoke-interface {v7, v6}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    move v7, v8

    goto :goto_1

    .line 828
    :cond_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    const-class v7, Ljava/util/EventListener;

    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/EventListener;

    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setEventListeners([Ljava/util/EventListener;)V

    .line 829
    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_durableListeners:Ljava/lang/Object;

    .line 831
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v6, :cond_2

    .line 832
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->stop()V

    .line 834
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v6

    .line 835
    :goto_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 837
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 838
    invoke-virtual {p0, v7, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 843
    :cond_3
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "stopped {}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-interface {v3, v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 846
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_4

    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 850
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    return-void

    :catchall_1
    move-exception v3

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    .line 843
    :goto_3
    sget-object v6, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "stopped {}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-interface {v6, v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 846
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_5

    .line 847
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_5
    throw v3
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dumpThis(Ljava/lang/Appendable;)V

    const/4 v0, 0x6

    .line 220
    new-array v0, v0, [Ljava/util/Collection;

    new-instance v1, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler$CLDump;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBeans()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeEntrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    return-void
.end method

.method public getAliasChecks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;",
            ">;"
        }
    .end annotation

    .line 1697
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getAllowNullPathInfo()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lorg/eclipse/jetty/util/Attributes;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    return-object v0
.end method

.method public getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .line 1312
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1314
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassPath()Ljava/lang/String;
    .locals 6

    .line 458
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    instance-of v0, v0, Ljava/net/URLClassLoader;

    if-nez v0, :cond_0

    goto :goto_2

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    check-cast v0, Ljava/net/URLClassLoader;

    .line 461
    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 463
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 467
    :try_start_0
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 468
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 469
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 471
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 472
    sget-char v5, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 478
    sget-object v5, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    .line 483
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getConnectorNames()[Ljava/lang/String;
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;
    .locals 1

    .line 1422
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    return-object v0
.end method

.method public getEventListeners()[Ljava/util/EventListener;
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInitParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    return-object v0
.end method

.method public getLocaleEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1542
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1544
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1559
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1561
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1563
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_localeEncodingMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getLogger()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public getMaxFormContentSize()I
    .locals 1

    .line 1442
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    return v0
.end method

.method public getMaxFormKeys()I
    .locals 1

    .line 1458
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    return v0
.end method

.method public getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .line 1382
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    if-nez v0, :cond_0

    .line 1383
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 1384
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method public getProtectedTargets()[Ljava/lang/String;
    .locals 4

    .line 1190
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1193
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1194
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p1, :cond_7

    const-string v0, "/"

    .line 1572
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1575
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 1580
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1581
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 1584
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1586
    sget-object v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1587
    sget-object v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aliased resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "~="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1590
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliasChecks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1592
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;

    .line 1593
    invoke-interface {v4, p1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$AliasCheck;->check(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1595
    sget-object p1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1596
    sget-object p1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aliased resource: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " approved by "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :cond_5
    return-object v1

    :cond_6
    return-object v0

    :catch_0
    move-exception p1

    .line 1607
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    return-object v1

    .line 1573
    :cond_7
    :goto_0
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .line 1323
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1325
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePaths(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1644
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1645
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1647
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    .line 1649
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1652
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1655
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 1656
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    .line 1664
    sget-object v0, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 1666
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getVirtualHosts()[Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .line 1413
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    .line 1129
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1130
    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1133
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_0

    .line 1135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1136
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1137
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :cond_0
    move-object v2, v0

    .line 1140
    :goto_0
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1144
    sget-object p1, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 1147
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 1144
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/server/handler/ContextHandler;->__context:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 1147
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    throw p1
.end method

.method public isAliases()Z
    .locals 1

    .line 1363
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 652
    monitor-enter p0

    .line 654
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 655
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCompactPath()Z
    .locals 1

    .line 1477
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    return v0
.end method

.method public isProtectedTarget(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1160
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    const-string v1, "//"

    .line 1163
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 1168
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1170
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v1, v2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_2
    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 623
    monitor-enter p0

    .line 625
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 626
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1523
    monitor-exit p0

    return-object p1

    .line 1525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 1526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1528
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1521
    monitor-exit p0

    throw p1
.end method

.method public newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1634
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    return-object p1
.end method

.method public newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    return-object p1
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1206
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public removeVirtualHosts([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 348
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 350
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 352
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_1

    .line 365
    :cond_4
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public restrictEventListener(Ljava/util/EventListener;)V
    .locals 0

    return-void
.end method

.method public setAliases(Z)V
    .locals 0

    .line 1373
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_aliases:Z

    return-void
.end method

.method public setAllowNullPathInfo(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_allowNullPathInfo:Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1218
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1219
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAttributes(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 3

    .line 1229
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 1230
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->addAll(Lorg/eclipse/jetty/util/Attributes;)V

    .line 1231
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1232
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1235
    invoke-interface {p1, v1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 664
    monitor-enter p0

    .line 666
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    .line 667
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 668
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setCompactPath(Z)V
    .locals 0

    .line 1487
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_compactPath:Z

    return-void
.end method

.method public setConnectorNames([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 407
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 408
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_connectors:Ljava/util/Set;

    :goto_1
    return-void
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ends with /"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1286
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextPath:Ljava/lang/String;

    .line 1288
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->isStarting()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1290
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object p1

    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1291
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1292
    aget-object v1, p1, v0

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_displayName:Ljava/lang/String;

    return-void
.end method

.method public setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1433
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 1434
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1435
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v5, "errorHandler"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1436
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 560
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 561
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 562
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    .line 564
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 566
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 568
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_eventListeners:[Ljava/util/EventListener;

    aget-object v1, v1, v0

    .line 570
    instance-of v2, v1, Ljavax/servlet/ServletContextListener;

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    .line 573
    :cond_0
    instance-of v2, v1, Ljavax/servlet/ServletContextAttributeListener;

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextAttributeListeners:Ljava/lang/Object;

    .line 576
    :cond_1
    instance-of v2, v1, Ljavax/servlet/ServletRequestListener;

    if-eqz v2, :cond_2

    .line 577
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestListeners:Ljava/lang/Object;

    .line 579
    :cond_2
    instance-of v2, v1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v2, :cond_3

    .line 580
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_requestAttributeListeners:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setLogger(Lorg/eclipse/jetty/util/log/Logger;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public setManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1263
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1264
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMaxFormContentSize(I)V
    .locals 0

    .line 1452
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormContentSize:I

    return-void
.end method

.method public setMaxFormKeys(I)V
    .locals 0

    .line 1468
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_maxFormKeys:I

    return-void
.end method

.method public setMimeTypes(Lorg/eclipse/jetty/http/MimeTypes;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-void
.end method

.method public setProtectedTargets([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1180
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    return-void

    .line 1184
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    .line 1185
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_protectedTargets:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 4

    .line 1347
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1351
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13

    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 257
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const/4 v4, 0x0

    const-string v5, "error"

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 258
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    .line 260
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v7

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    const-string v11, "error"

    const/4 v12, 0x1

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 261
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    :goto_0
    return-void
.end method

.method public setShutdown(Z)V
    .locals 0

    .line 639
    monitor-enter p0

    .line 641
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    .line 642
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_shutdown:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_available:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_availability:I

    .line 643
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVirtualHosts([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 281
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    goto :goto_1

    .line 285
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 286
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 287
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_vhosts:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0

    .line 1402
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_welcomeFiles:[Ljava/lang/String;

    return-void
.end method

.method protected startContext()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_initParams:Ljava/util/Map;

    const-string v1, "org.eclipse.jetty.server.context.ManagedAttributes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 749
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    const-string v2, ","

    .line 750
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 751
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 752
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_managedAttributes:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 755
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 758
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 759
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkManagedAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 763
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 765
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_errorHandler:Lorg/eclipse/jetty/server/handler/ErrorHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->start()V

    .line 769
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 771
    new-instance v0, Ljavax/servlet/ServletContextEvent;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, v2}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 772
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 774
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandler;->_contextListeners:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextListener;

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->callContextInitialized(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1494
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v0

    .line 1496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1501
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1502
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "\\."

    .line 1504
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1505
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 1506
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1509
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    .line 1510
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 1512
    array-length v4, v0

    if-lez v4, :cond_1

    .line 1513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x7d

    .line 1514
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
