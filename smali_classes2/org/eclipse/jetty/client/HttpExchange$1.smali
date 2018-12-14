.class Lorg/eclipse/jetty/client/HttpExchange$1;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "HttpExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/client/HttpExchange;->scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/HttpExchange;

.field final synthetic val$destination:Lorg/eclipse/jetty/client/HttpDestination;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpExchange$1;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object p2, p0, Lorg/eclipse/jetty/client/HttpExchange$1;->val$destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public expired()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpExchange$1;->this$0:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpExchange$1;->val$destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->expire(Lorg/eclipse/jetty/client/HttpDestination;)V

    return-void
.end method
