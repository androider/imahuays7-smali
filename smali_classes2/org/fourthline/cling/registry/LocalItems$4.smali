.class Lorg/fourthline/cling/registry/LocalItems$4;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/registry/LocalItems;->advertiseAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/registry/LocalItems;

.field final synthetic val$localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/registry/LocalItems;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/fourthline/cling/registry/LocalItems$4;->this$0:Lorg/fourthline/cling/registry/LocalItems;

    iput-object p2, p0, Lorg/fourthline/cling/registry/LocalItems$4;->val$localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 293
    :try_start_0
    invoke-static {}, Lorg/fourthline/cling/registry/LocalItems;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Sleeping some milliseconds to avoid flooding the network with ALIVE msgs"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems$4;->this$0:Lorg/fourthline/cling/registry/LocalItems;

    iget-object v0, v0, Lorg/fourthline/cling/registry/LocalItems;->randomGenerator:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-static {}, Lorg/fourthline/cling/registry/LocalItems;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background execution interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 298
    :goto_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/LocalItems$4;->this$0:Lorg/fourthline/cling/registry/LocalItems;

    iget-object v0, v0, Lorg/fourthline/cling/registry/LocalItems;->registry:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/LocalItems$4;->val$localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingNotificationAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;->run()V

    return-void
.end method
