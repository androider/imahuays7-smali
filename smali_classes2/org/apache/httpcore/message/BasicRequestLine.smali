.class public Lorg/apache/httpcore/message/BasicRequestLine;
.super Ljava/lang/Object;
.source "BasicRequestLine.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/httpcore/w;


# static fields
.field private static final serialVersionUID:J = 0x2701312e8d8938a9L


# instance fields
.field private final a:Lorg/apache/httpcore/ProtocolVersion;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/httpcore/ProtocolVersion;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method"

    .line 56
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/httpcore/message/BasicRequestLine;->b:Ljava/lang/String;

    const-string p1, "URI"

    .line 57
    invoke-static {p2, p1}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/httpcore/message/BasicRequestLine;->c:Ljava/lang/String;

    const-string p1, "Version"

    .line 58
    invoke-static {p3, p1}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/ProtocolVersion;

    iput-object p1, p0, Lorg/apache/httpcore/message/BasicRequestLine;->a:Lorg/apache/httpcore/ProtocolVersion;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicRequestLine;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicRequestLine;->a:Lorg/apache/httpcore/ProtocolVersion;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/httpcore/message/BasicRequestLine;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    sget-object v0, Lorg/apache/httpcore/message/h;->b:Lorg/apache/httpcore/message/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/apache/httpcore/message/h;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/w;)Lorg/apache/httpcore/util/CharArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/httpcore/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
