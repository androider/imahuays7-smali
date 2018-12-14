.class Lorg/eclipse/jetty/util/Scanner$1;
.super Ljava/util/TimerTask;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/util/Scanner;->newTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/util/Scanner;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/Scanner;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/eclipse/jetty/util/Scanner$1;->this$0:Lorg/eclipse/jetty/util/Scanner;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner$1;->this$0:Lorg/eclipse/jetty/util/Scanner;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    return-void
.end method
