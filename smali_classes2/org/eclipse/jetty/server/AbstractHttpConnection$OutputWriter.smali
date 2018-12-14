.class public Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;
.super Lorg/eclipse/jetty/server/HttpWriter;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .line 1245
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1246
    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/HttpWriter;-><init>(Lorg/eclipse/jetty/server/HttpOutput;)V

    return-void
.end method
