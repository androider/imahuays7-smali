.class Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/SelectorManager$ChangeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field final synthetic val$dump:Ljava/util/ArrayList;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;->val$dump:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 956
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;->this$1:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;->val$dump:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->dumpKeyState(Ljava/util/List;)V

    .line 957
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
