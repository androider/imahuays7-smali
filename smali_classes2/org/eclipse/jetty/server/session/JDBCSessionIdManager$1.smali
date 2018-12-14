.class Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;
.super Ljava/util/TimerTask;
.source "JDBCSessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->setScavengeInterval(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$1;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->access$000(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V

    return-void
.end method
