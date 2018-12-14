.class Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "MockUpnpServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->getDefaultExecutorService()Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field terminated:Z

.field final synthetic this$0:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;->this$0:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;->shutdown()V

    .line 126
    iget-boolean p1, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;->terminated:Z

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 130
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;->terminated:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;->terminated:Z

    return v0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;->terminated:Z

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$3;->shutdown()V

    const/4 v0, 0x0

    return-object v0
.end method
