.class Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;
.super Ljava/lang/Object;
.source "SslConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SslConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SslBuffers"
.end annotation


# instance fields
.field final _in:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field final _out:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field final _unwrap:Lorg/eclipse/jetty/io/nio/NIOBuffer;


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_in:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_out:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 84
    new-instance p1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslBuffers;->_unwrap:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    return-void
.end method
