.class Lorg/eclipse/jetty/io/nio/SelectorManager$1;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 277
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-static {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager;->access$000(Lorg/eclipse/jetty/io/nio/SelectorManager;)[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 304
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Stopped {} on {}"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    aput-object v7, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v5, v6, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_0
    return-void

    .line 280
    :cond_1
    :try_start_1
    iget v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    aget-object v5, v5, v6

    .line 282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Selector"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->val$id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 283
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getPriority()I

    move-result v7

    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v8}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 285
    :cond_2
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Starting {} on {}"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object p0, v8, v2

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :goto_0
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/nio/SelectorManager;->isRunning()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 290
    :try_start_2
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->doSelect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 298
    :try_start_3
    sget-object v7, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v6

    .line 294
    sget-object v7, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 304
    :cond_3
    sget-object v5, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Stopped {} on {}"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    aput-object v7, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v5, v6, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_4
    return-void

    :catchall_0
    move-exception v5

    .line 304
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Stopped {} on {}"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    aput-object v8, v4, v3

    aput-object p0, v4, v2

    invoke-interface {v6, v7, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$1;->this$0:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectorPriorityDelta()I

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_5
    throw v5
.end method
