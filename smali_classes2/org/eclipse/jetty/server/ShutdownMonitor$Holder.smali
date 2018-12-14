.class Lorg/eclipse/jetty/server/ShutdownMonitor$Holder;
.super Ljava/lang/Object;
.source "ShutdownMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/ShutdownMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static instance:Lorg/eclipse/jetty/server/ShutdownMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lorg/eclipse/jetty/server/ShutdownMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;-><init>(Lorg/eclipse/jetty/server/ShutdownMonitor$1;)V

    sput-object v0, Lorg/eclipse/jetty/server/ShutdownMonitor$Holder;->instance:Lorg/eclipse/jetty/server/ShutdownMonitor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
