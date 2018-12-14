.class Lorg/eclipse/jetty/client/HttpDestination$1;
.super Ljava/io/IOException;
.source "HttpDestination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/HttpDestination;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination$1;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    iput-object p3, p0, Lorg/eclipse/jetty/client/HttpDestination$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination$1;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
