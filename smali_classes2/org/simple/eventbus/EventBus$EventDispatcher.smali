.class Lorg/simple/eventbus/EventBus$EventDispatcher;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simple/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventDispatcher"
.end annotation


# instance fields
.field mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

.field private mCacheEventTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/List<",
            "Lorg/simple/eventbus/EventType;",
            ">;>;"
        }
    .end annotation
.end field

.field mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

.field mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

.field mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

.field final synthetic this$0:Lorg/simple/eventbus/EventBus;


# direct methods
.method private constructor <init>(Lorg/simple/eventbus/EventBus;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance p1, Lorg/simple/eventbus/handler/UIThreadEventHandler;

    invoke-direct {p1}, Lorg/simple/eventbus/handler/UIThreadEventHandler;-><init>()V

    iput-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 329
    new-instance p1, Lorg/simple/eventbus/handler/DefaultEventHandler;

    invoke-direct {p1}, Lorg/simple/eventbus/handler/DefaultEventHandler;-><init>()V

    iput-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 334
    new-instance p1, Lorg/simple/eventbus/handler/AsyncEventHandler;

    invoke-direct {p1}, Lorg/simple/eventbus/handler/AsyncEventHandler;-><init>()V

    iput-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    .line 339
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    .line 343
    new-instance p1, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;

    invoke-direct {p1}, Lorg/simple/eventbus/matchpolicy/DefaultMatchPolicy;-><init>()V

    iput-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

    return-void
.end method

.method synthetic constructor <init>(Lorg/simple/eventbus/EventBus;Lorg/simple/eventbus/EventBus$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;-><init>(Lorg/simple/eventbus/EventBus;)V

    return-void
.end method

.method private deliveryEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V
    .locals 1

    .line 363
    invoke-direct {p0, p1, p2}, Lorg/simple/eventbus/EventBus$EventDispatcher;->getMatchedEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simple/eventbus/EventType;

    .line 366
    invoke-direct {p0, v0, p2}, Lorg/simple/eventbus/EventBus$EventDispatcher;->handleEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getEventHandler(Lorg/simple/eventbus/ThreadMode;)Lorg/simple/eventbus/handler/EventHandler;
    .locals 1

    .line 455
    sget-object v0, Lorg/simple/eventbus/ThreadMode;->ASYNC:Lorg/simple/eventbus/ThreadMode;

    if-ne p1, v0, :cond_0

    .line 456
    iget-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-object p1

    .line 458
    :cond_0
    sget-object v0, Lorg/simple/eventbus/ThreadMode;->POST:Lorg/simple/eventbus/ThreadMode;

    if-ne p1, v0, :cond_1

    .line 459
    iget-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-object p1

    .line 461
    :cond_1
    iget-object p1, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-object p1
.end method

.method private getMatchedEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object p2, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

    invoke-interface {v0, p1, p2}, Lorg/simple/eventbus/matchpolicy/MatchPolicy;->findMatchEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 397
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mCacheEventTypes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 400
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object p1
.end method

.method private handleEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    invoke-static {v0}, Lorg/simple/eventbus/EventBus;->access$100(Lorg/simple/eventbus/EventBus;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simple/eventbus/Subscription;

    .line 383
    iget-object v1, v0, Lorg/simple/eventbus/Subscription;->threadMode:Lorg/simple/eventbus/ThreadMode;

    .line 384
    invoke-direct {p0, v1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->getEventHandler(Lorg/simple/eventbus/ThreadMode;)Lorg/simple/eventbus/handler/EventHandler;

    move-result-object v1

    .line 386
    invoke-interface {v1, v0, p2}, Lorg/simple/eventbus/handler/EventHandler;->handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleStickyEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V
    .locals 7

    .line 416
    iget-object v0, p1, Lorg/simple/eventbus/EventType;->event:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/simple/eventbus/EventBus$EventDispatcher;->getMatchedEventTypes(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 418
    iget-object p1, p1, Lorg/simple/eventbus/EventType;->event:Ljava/lang/Object;

    .line 419
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simple/eventbus/EventType;

    .line 422
    iget-object v2, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    invoke-static {v2}, Lorg/simple/eventbus/EventBus;->access$100(Lorg/simple/eventbus/EventBus;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simple/eventbus/Subscription;

    .line 427
    iget-object v4, v3, Lorg/simple/eventbus/Subscription;->threadMode:Lorg/simple/eventbus/ThreadMode;

    .line 428
    invoke-direct {p0, v4}, Lorg/simple/eventbus/EventBus$EventDispatcher;->getEventHandler(Lorg/simple/eventbus/ThreadMode;)Lorg/simple/eventbus/handler/EventHandler;

    move-result-object v4

    .line 430
    invoke-direct {p0, v3, p2}, Lorg/simple/eventbus/EventBus$EventDispatcher;->isTarget(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v3, Lorg/simple/eventbus/Subscription;->eventType:Lorg/simple/eventbus/EventType;

    .line 431
    invoke-virtual {v5, v1}, Lorg/simple/eventbus/EventType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Lorg/simple/eventbus/Subscription;->eventType:Lorg/simple/eventbus/EventType;

    iget-object v5, v5, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    iget-object v6, v1, Lorg/simple/eventbus/EventType;->paramClass:Ljava/lang/Class;

    .line 433
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    :cond_3
    invoke-interface {v4, v3, p1}, Lorg/simple/eventbus/handler/EventHandler;->handleEvent(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private isTarget(Lorg/simple/eventbus/Subscription;Ljava/lang/Object;)Z
    .locals 1

    .line 449
    iget-object v0, p1, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/simple/eventbus/Subscription;->subscriber:Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 451
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method


# virtual methods
.method dispatchEvents(Ljava/lang/Object;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    iget-object v0, v0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 350
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simple/eventbus/EventType;

    invoke-direct {p0, v1, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->deliveryEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchStickyEvents(Ljava/lang/Object;)V
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/simple/eventbus/EventBus$EventDispatcher;->this$0:Lorg/simple/eventbus/EventBus;

    invoke-static {v0}, Lorg/simple/eventbus/EventBus;->access$200(Lorg/simple/eventbus/EventBus;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simple/eventbus/EventType;

    .line 405
    invoke-direct {p0, v1, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->handleStickyEvent(Lorg/simple/eventbus/EventType;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
