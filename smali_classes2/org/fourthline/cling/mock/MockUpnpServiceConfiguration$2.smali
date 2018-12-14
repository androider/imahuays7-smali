.class Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$2;
.super Ljava/lang/Object;
.source "MockUpnpServiceConfiguration.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration$2;->this$0:Lorg/fourthline/cling/mock/MockUpnpServiceConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
