.class public Lorg/eclipse/jetty/servlet/listener/IntrospectorCleaner;
.super Ljava/lang/Object;
.source "IntrospectorCleaner.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 0

    .line 42
    invoke-static {}, Ljava/beans/Introspector;->flushCaches()V

    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 0

    return-void
.end method
