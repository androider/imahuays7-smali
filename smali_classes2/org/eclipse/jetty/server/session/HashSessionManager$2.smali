.class Lorg/eclipse/jetty/server/session/HashSessionManager$2;
.super Ljava/util/TimerTask;
.source "HashSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager$2;->this$0:Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->scavenge()V

    return-void
.end method
