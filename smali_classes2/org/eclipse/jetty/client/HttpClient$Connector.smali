.class interface abstract Lorg/eclipse/jetty/client/HttpClient$Connector;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Connector"
.end annotation


# virtual methods
.method public abstract startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
