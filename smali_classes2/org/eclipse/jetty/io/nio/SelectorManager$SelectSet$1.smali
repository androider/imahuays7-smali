.class Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->doSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field final synthetic val$idle_now:J


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;J)V
    .locals 0

    .line 709
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iput-wide p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->val$idle_now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->access$800(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 714
    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$1;->val$idle_now:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->checkIdleTimestamp(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
