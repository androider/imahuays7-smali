.class Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;
.super Ljava/lang/Object;
.source "StatisticsHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/StatisticsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 7

    .line 61
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->getBaseRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v3

    sub-long v5, v1, v3

    .line 64
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$000(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 65
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$100(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 67
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$200(Lorg/eclipse/jetty/server/handler/StatisticsHandler;Lorg/eclipse/jetty/server/Request;)V

    .line 69
    invoke-interface {p1}, Lorg/eclipse/jetty/continuation/Continuation;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {p1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$300(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    :cond_0
    return-void
.end method

.method public onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/StatisticsHandler$1;->this$0:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-static {p1}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->access$400(Lorg/eclipse/jetty/server/handler/StatisticsHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
