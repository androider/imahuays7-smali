.class public Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "AsyncContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AsyncContinuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AsyncContinuation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public expired()V
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1058
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncTimeout;->this$0:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->expired()V

    return-void
.end method
