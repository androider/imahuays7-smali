.class public Lorg/eclipse/jetty/servlet/ServletHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ServletHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ServletHandler$Chain;,
        Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_SERVLET:Ljava/lang/String; = "default"


# instance fields
.field protected final _chainCache:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljavax/servlet/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field protected final _chainLRU:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

.field private _filterChainsCached:Z

.field private _filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

.field private final _filterNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _filterPathMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jetty/servlet/FilterMapping;",
            ">;"
        }
    .end annotation
.end field

.field private _filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _matchAfterIndex:I

.field private _matchBeforeIndex:I

.field private _maxFilterChainsCacheSize:I

.field private _servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

.field private final _servletNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/ServletHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _servletPathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _startWithUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    const/4 v0, 0x0

    .line 101
    new-array v1, v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const/4 v1, -0x1

    .line 103
    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 104
    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    const/16 v1, 0x200

    .line 106
    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 107
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 110
    new-array v0, v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    const/16 v0, 0x1f

    .line 120
    new-array v1, v0, [Ljava/util/concurrent/ConcurrentMap;

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    .line 121
    new-array v0, v0, [Ljava/util/Queue;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 91
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;
    .locals 8

    if-nez p2, :cond_0

    .line 609
    invoke-virtual {p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 610
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->dispatch(Ljavax/servlet/DispatcherType;)I

    move-result v1

    .line 612
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_1

    .line 614
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/FilterChain;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 622
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    if-eqz v4, :cond_3

    move-object v5, v3

    const/4 v4, 0x0

    .line 624
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 626
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 627
    invoke-virtual {v6, p2, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 628
    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v3

    :cond_4
    if-eqz p3, :cond_8

    .line 633
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 636
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 638
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v4, 0x0

    .line 639
    :goto_2
    invoke-static {p2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 641
    invoke-static {p2, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 642
    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 643
    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 646
    :cond_6
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    const-string v4, "*"

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 647
    :goto_3
    invoke-static {p2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 649
    invoke-static {p2, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 650
    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 651
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    if-nez v5, :cond_9

    return-object v3

    .line 661
    :cond_9
    iget-boolean p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz p2, :cond_d

    .line 663
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_a

    .line 664
    new-instance p1, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-direct {p1, p0, v5, p3}, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    move-object v3, p1

    .line 666
    :cond_a
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object p1, p1, v1

    .line 667
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object p2, p2, v1

    .line 670
    :goto_4
    iget p3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lez p3, :cond_c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    iget v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lt p3, v1, :cond_c

    .line 675
    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_b

    .line 678
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_5

    .line 681
    :cond_b
    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 684
    :cond_c
    :goto_5
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-interface {p2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 687
    :cond_d
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_e

    .line 688
    new-instance v3, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;

    invoke-direct {v3, p0, p1, v5, p3}, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/Request;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    :cond_e
    :goto_6
    return-object v3
.end method

.method private invalidateChainsCache()V
    .locals 6

    .line 696
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 699
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 700
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 701
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v4, 0x8

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 702
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v5, 0x10

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 704
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 705
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 706
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 707
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 708
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .line 1071
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object p1

    return-object p1
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1096
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    :cond_0
    return-void
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1083
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1086
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    :cond_1
    return-void
.end method

.method public addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 1107
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v0

    .line 1108
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1109
    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1120
    sget-object v4, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v4, v0, :cond_2

    .line 1122
    array-length v0, v1

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1123
    iget p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-gez p1, :cond_5

    .line 1124
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    array-length p1, p1

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    goto :goto_2

    .line 1129
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-gez v0, :cond_3

    .line 1130
    array-length v0, v1

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_2

    .line 1133
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    invoke-virtual {p0, p1, v0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    .line 1134
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 1135
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_2

    .line 1111
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v2, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    if-eqz v0, :cond_5

    .line 1112
    sget-object p1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v0, p1, :cond_5

    .line 1113
    iput v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    :cond_5
    :goto_2
    return-void
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .line 1001
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 1002
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 1003
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .line 931
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 932
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 933
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 3

    .line 1017
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .line 947
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    return-object v0
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 2

    .line 1033
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1039
    :cond_0
    :try_start_0
    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1041
    new-instance v1, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v1}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 1042
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v1, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 1046
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1055
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1056
    throw p1

    :catch_1
    move-exception p1

    .line 1050
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1051
    throw p1
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;)V"
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 969
    :cond_0
    :try_start_0
    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 971
    new-instance v1, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v1}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 972
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v1, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 976
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 986
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 987
    throw p1

    :catch_1
    move-exception p1

    .line 981
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 982
    throw p1
.end method

.method public addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 2

    .line 887
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    return-void
.end method

.method public addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 2

    .line 896
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    return-void
.end method

.method public addServletWithMapping(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Servlet;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jetty/servlet/ServletHolder;"
        }
    .end annotation

    .line 842
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 843
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 846
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    return-object v0
.end method

.method public addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3

    .line 829
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    return-object v0
.end method

.method public addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 2

    .line 858
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 864
    :cond_0
    :try_start_0
    const-class v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 866
    new-instance v1, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 867
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object p1

    const-class p2, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {p1, v1, p2}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 873
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 874
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_1

    .line 875
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 876
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method destroyFilter(Ljavax/servlet/Filter;)V
    .locals 1

    .line 1630
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyFilter(Ljavax/servlet/Filter;)V

    :cond_0
    return-void
.end method

.method destroyServlet(Ljavax/servlet/Servlet;)V
    .locals 1

    .line 1623
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyServlet(Ljavax/servlet/Servlet;)V

    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 454
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v0

    .line 456
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v2, "/"

    .line 460
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    .line 462
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 463
    invoke-direct {p0, p2, p1, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 469
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 471
    invoke-direct {p0, p2, v3, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v3

    .line 476
    :cond_1
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "chain={}"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v2, v4, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x1f4

    if-nez v1, :cond_3

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v3

    if-nez v3, :cond_2

    .line 483
    invoke-virtual {p0, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_3

    .line 485
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_10

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :catch_2
    move-exception p1

    goto/16 :goto_d

    :catch_3
    move-exception p1

    goto/16 :goto_e

    :catch_4
    move-exception p1

    goto/16 :goto_f

    .line 491
    :cond_3
    instance-of p1, p3, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    if-eqz p1, :cond_4

    .line 492
    move-object p1, p3

    check-cast p1, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, p3

    .line 494
    :goto_1
    instance-of v4, p4, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    if-eqz v4, :cond_5

    .line 495
    move-object v4, p4

    check-cast v4, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, p4

    :goto_2
    if-eqz v3, :cond_6

    .line 499
    invoke-interface {v3, p1, v4}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_3

    .line 501
    :cond_6
    invoke-virtual {v1, p2, p1, v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v1, :cond_18

    .line 602
    :goto_4
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_c

    .line 584
    :goto_5
    :try_start_1
    sget-object v3, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v3, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v3, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 585
    throw p1

    .line 586
    :cond_7
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 587
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    :cond_8
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "javax.servlet.error.exception_type"

    .line 592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javax.servlet.error.exception"

    .line 593
    invoke-interface {p3, v0, p1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    invoke-interface {p4, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_6

    .line 597
    :cond_9
    sget-object p3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string p4, "Response already committed for handling "

    invoke-interface {p3, p4, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    if-eqz v1, :cond_18

    goto :goto_4

    .line 518
    :goto_7
    sget-object v3, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v3, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v3, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 520
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_a

    .line 521
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 522
    :cond_a
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_b

    .line 523
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 524
    :cond_b
    instance-of v0, p1, Ljavax/servlet/ServletException;

    if-eqz v0, :cond_c

    .line 525
    check-cast p1, Ljavax/servlet/ServletException;

    throw p1

    .line 530
    :cond_c
    instance-of v0, p1, Ljavax/servlet/UnavailableException;

    if-eqz v0, :cond_d

    .line 532
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 534
    :cond_d
    instance-of v0, p1, Ljavax/servlet/ServletException;

    if-eqz v0, :cond_e

    .line 536
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 537
    move-object v0, p1

    check-cast v0, Ljavax/servlet/ServletException;

    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object p1, v0

    .line 543
    :cond_e
    :goto_8
    instance-of v0, p1, Lorg/eclipse/jetty/http/HttpException;

    if-eqz v0, :cond_f

    .line 544
    check-cast p1, Lorg/eclipse/jetty/http/HttpException;

    throw p1

    .line 545
    :cond_f
    instance-of v0, p1, Lorg/eclipse/jetty/io/RuntimeIOException;

    if-eqz v0, :cond_10

    .line 546
    check-cast p1, Lorg/eclipse/jetty/io/RuntimeIOException;

    throw p1

    .line 547
    :cond_10
    instance-of v0, p1, Lorg/eclipse/jetty/io/EofException;

    if-eqz v0, :cond_11

    .line 548
    check-cast p1, Lorg/eclipse/jetty/io/EofException;

    throw p1

    .line 550
    :cond_11
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 552
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 555
    :cond_12
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_14

    instance-of v0, p1, Ljavax/servlet/UnavailableException;

    if-eqz v0, :cond_13

    goto :goto_9

    .line 561
    :cond_13
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 557
    :cond_14
    :goto_9
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :goto_a
    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "javax.servlet.error.exception_type"

    .line 566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "javax.servlet.error.exception"

    .line 567
    invoke-interface {p3, v0, p1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    instance-of p3, p1, Ljavax/servlet/UnavailableException;

    if-eqz p3, :cond_16

    .line 570
    check-cast p1, Ljavax/servlet/UnavailableException;

    .line 571
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p1, 0x194

    .line 572
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_b

    :cond_15
    const/16 p1, 0x1f7

    .line 574
    invoke-interface {p4, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_b

    .line 577
    :cond_16
    invoke-interface {p4, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_b

    .line 580
    :cond_17
    sget-object p3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response already committed for handling "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v7, [Ljava/lang/Object;

    invoke-interface {p3, p1, p4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    if-eqz v1, :cond_18

    goto/16 :goto_4

    :cond_18
    :goto_c
    return-void

    .line 514
    :goto_d
    throw p1

    .line 510
    :goto_e
    throw p1

    .line 506
    :goto_f
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_10
    if-eqz v1, :cond_19

    .line 602
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    :cond_19
    throw p1
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 374
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v2

    const-string v3, "/"

    .line 383
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 386
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 391
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 392
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v6, p1}, Lorg/eclipse/jetty/http/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    :goto_0
    invoke-static {v6, p1}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 395
    sget-object v7, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {v7, v2}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "javax.servlet.include.servlet_path"

    .line 397
    invoke-virtual {p2, v7, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "javax.servlet.include.path_info"

    .line 398
    invoke-virtual {p2, v3, v6}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 402
    :cond_1
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2, v6}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v5, v4

    goto :goto_1

    .line 410
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 413
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 414
    sget-object v3, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "servlet {}|{}|{} -> {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v5, v7, v8

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    :try_start_1
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 423
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->never()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 424
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 425
    :cond_5
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v4, :cond_6

    .line 426
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v4, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 427
    :cond_6
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v4, :cond_7

    .line 428
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    invoke-virtual {v4, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 430
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v3, :cond_8

    .line 436
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 438
    :cond_8
    sget-object p1, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {p1, v2}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 440
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_a

    .line 436
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 438
    :cond_a
    sget-object p3, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {p3, v2}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 440
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_b
    throw p1
.end method

.method protected declared-synchronized doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 165
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    const-class v1, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/SecurityHandler;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/SecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 172
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 173
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 175
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/16 v6, 0x10

    aput-object v1, v0, v6

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v1, v0, v2

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v1, v0, v3

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v1, v0, v4

    .line 186
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v1, v0, v5

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v1, v0, v6

    .line 190
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    instance-of v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v0, :cond_4

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3

    .line 210
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v4, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EXCEPTION "

    invoke-interface {v4, v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v2

    sget-object v4, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-eq v2, v4, :cond_1

    .line 214
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 217
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 220
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 225
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v3

    goto :goto_0

    .line 228
    :cond_3
    const-class v2, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 229
    const-class v0, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterMapping;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v0, v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, -0x1

    :goto_4
    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 231
    iput v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v2, :cond_9

    .line 239
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v2, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_9

    .line 241
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v2

    :try_start_4
    sget-object v4, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EXCEPTION "

    invoke-interface {v4, v5, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :goto_6
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v2

    sget-object v4, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-eq v2, v4, :cond_7

    .line 245
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 248
    :cond_6
    :goto_7
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 250
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 251
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 252
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_7

    .line 256
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move v2, v3

    goto :goto_5

    .line 259
    :cond_9
    const-class v2, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 260
    const-class v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 265
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 266
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 200
    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1638
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->dumpThis(Ljava/lang/Appendable;)V

    const/4 v0, 0x6

    .line 1639
    new-array v0, v0, [Ljava/util/Collection;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getBeans()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    return-void
.end method

.method public getContextLog()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object p1
.end method

.method public getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    return-object v0
.end method

.method public getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object p1

    return-object p1
.end method

.method getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getMaxFilterChainsCacheSize()I
    .locals 1

    .line 1605
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    return v0
.end method

.method public getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object p1
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 10

    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 338
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    array-length v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 340
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 343
    array-length v7, v6

    move-object v8, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v9, v6, v4

    .line 345
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v8, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v4

    :cond_4
    return-object v1
.end method

.method public getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    return-object v0
.end method

.method public getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 757
    new-instance v0, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 760
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 762
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 763
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_5

    .line 769
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 770
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 771
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 775
    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 777
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v3, :cond_2

    .line 778
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 783
    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    goto :goto_3

    .line 780
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No forced path servlet for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 786
    :cond_3
    :goto_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 790
    sget-object v4, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EXCEPTION "

    invoke-interface {v4, v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 791
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 794
    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    :cond_5
    return-void
.end method

.method protected insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;
    .locals 4

    if-gez p2, :cond_0

    .line 1208
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FilterMapping insertion pos < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1211
    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 1215
    :cond_1
    array-length v3, v0

    add-int/2addr v3, v1

    new-array v1, v3, [Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz p3, :cond_2

    .line 1221
    invoke-static {v0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1224
    aput-object p1, v1, p2

    add-int/lit8 p1, p2, 0x1

    .line 1227
    array-length p3, v0

    sub-int/2addr p3, p2

    invoke-static {v0, p2, v1, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p2, 0x1

    .line 1233
    invoke-static {v0, v2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1235
    aput-object p1, v1, p3

    .line 1238
    array-length p1, v0

    if-le p1, p3, :cond_3

    add-int/lit8 p2, p2, 0x2

    .line 1239
    array-length p1, v0

    sub-int/2addr p1, p3

    invoke-static {v0, p3, v1, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_0
    return-object v1

    .line 1213
    :cond_4
    :goto_1
    new-array p2, v1, [Lorg/eclipse/jetty/servlet/FilterMapping;

    aput-object p1, p2, v2

    return-object p2
.end method

.method public isAvailable()Z
    .locals 4

    .line 718
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 720
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    const/4 v2, 0x0

    .line 721
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 723
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 724
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isFilterChainsCached()Z
    .locals 1

    .line 804
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    return v0
.end method

.method public isStartWithUnavailable()Z
    .locals 1

    .line 745
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    return v0
.end method

.method public newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .line 912
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-object v0
.end method

.method public newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .line 813
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-object v0
.end method

.method protected notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    sget-object p2, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1369
    sget-object p2, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1151
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v0

    .line 1153
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1154
    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1162
    sget-object v3, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v3, v0, :cond_2

    .line 1168
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    if-gez v0, :cond_1

    .line 1171
    iput v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1172
    invoke-virtual {p0, p1, v2, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    .line 1173
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0

    .line 1177
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    .line 1178
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1179
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_0

    .line 1185
    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    .line 1186
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1190
    :goto_0
    iget p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-ltz p1, :cond_4

    .line 1191
    iget p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    goto :goto_2

    .line 1156
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v2, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    if-eqz v0, :cond_4

    .line 1157
    sget-object p1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne p1, v0, :cond_4

    .line 1158
    iput v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    :cond_4
    :goto_2
    return-void
.end method

.method public setFilterChainsCached(Z)V
    .locals 0

    .line 1379
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    return-void
.end method

.method public setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 7

    .line 1388
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v5, "filterMapping"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1390
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 1391
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1392
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    return-void
.end method

.method public declared-synchronized setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 7

    monitor-enter p0

    .line 1398
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v5, "filter"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1400
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1401
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1402
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1397
    monitor-exit p0

    throw p1
.end method

.method public setMaxFilterChainsCacheSize(I)V
    .locals 0

    .line 1617
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 14

    .line 137
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const/4 v5, 0x0

    const-string v6, "filter"

    const/4 v7, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v6, "filterMapping"

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v6, "servlet"

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 143
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v6, "servletMapping"

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 146
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    if-eqz p1, :cond_1

    if-eq v0, p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v8

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v12, "filter"

    const/4 v13, 0x1

    move-object v9, p0

    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v10, "servlet"

    const/4 v11, 0x1

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 7

    .line 1411
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v5, "servletMapping"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1413
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 1414
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1415
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    return-void
.end method

.method public setServletSecurity(Ljavax/servlet/ServletRegistration$Dynamic;Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletRegistration$Dynamic;",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setServletSecurity(Ljavax/servlet/ServletRegistration$Dynamic;Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 903
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 7

    monitor-enter p0

    .line 1424
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v5, "servlet"

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1426
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1427
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1428
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1423
    monitor-exit p0

    throw p1
.end method

.method public setStartWithUnavailable(Z)V
    .locals 0

    .line 736
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    return-void
.end method

.method protected declared-synchronized updateMappings()V
    .locals 8

    monitor-enter p0

    .line 1276
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1278
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1279
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    goto/16 :goto_2

    .line 1283
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1284
    new-instance v0, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v0, 0x0

    .line 1285
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 1287
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/servlet/FilterHolder;

    if-nez v3, :cond_1

    .line 1289
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No filter named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1290
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1291
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1292
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1296
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1297
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 1299
    aget-object v5, v3, v4

    if-eqz v5, :cond_3

    .line 1300
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    aget-object v6, v3, v4

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v7, v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    if-nez v0, :cond_6

    goto :goto_5

    .line 1313
    :cond_6
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    const/4 v1, 0x0

    .line 1316
    :goto_3
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 1318
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/servlet/ServletHolder;

    if-nez v3, :cond_7

    .line 1320
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such servlet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_7
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1323
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1324
    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_9

    .line 1325
    aget-object v6, v4, v5

    if-eqz v6, :cond_8

    .line 1326
    aget-object v6, v4, v5

    invoke-virtual {v0, v6, v3}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1330
    :cond_a
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    goto :goto_6

    .line 1309
    :cond_b
    :goto_5
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 1334
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_d

    .line 1336
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    array-length v0, v0

    :goto_7
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_d

    .line 1338
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    .line 1339
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_c
    move v0, v1

    goto :goto_7

    .line 1343
    :cond_d
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1345
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filterNameMap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pathFilters="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "servletFilterMap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "servletPathMap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "servletNameMap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    :cond_e
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1355
    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    :cond_11
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 1359
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 1275
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized updateNameMappings()V
    .locals 5

    monitor-enter p0

    .line 1249
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1250
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1252
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1254
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1260
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1261
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    .line 1264
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 1266
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v3, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1270
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1248
    monitor-exit p0

    throw v0
.end method
