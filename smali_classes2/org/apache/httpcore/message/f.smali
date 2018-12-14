.class public Lorg/apache/httpcore/message/f;
.super Lorg/apache/httpcore/message/a;
.source "BasicHttpRequest.java"

# interfaces
.implements Lorg/apache/httpcore/n;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lorg/apache/httpcore/w;


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/w;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/apache/httpcore/message/a;-><init>()V

    const-string v0, "Request line"

    .line 81
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/httpcore/w;

    iput-object v0, p0, Lorg/apache/httpcore/message/f;->e:Lorg/apache/httpcore/w;

    .line 82
    invoke-interface {p1}, Lorg/apache/httpcore/w;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/httpcore/message/f;->c:Ljava/lang/String;

    .line 83
    invoke-interface {p1}, Lorg/apache/httpcore/w;->getUri()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/httpcore/message/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Lorg/apache/httpcore/ProtocolVersion;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/apache/httpcore/message/f;->e()Lorg/apache/httpcore/w;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/httpcore/w;->getProtocolVersion()Lorg/apache/httpcore/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/apache/httpcore/w;
    .locals 4

    .line 103
    iget-object v0, p0, Lorg/apache/httpcore/message/f;->e:Lorg/apache/httpcore/w;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lorg/apache/httpcore/message/BasicRequestLine;

    iget-object v1, p0, Lorg/apache/httpcore/message/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/httpcore/message/f;->d:Ljava/lang/String;

    sget-object v3, Lorg/apache/httpcore/HttpVersion;->HTTP_1_1:Lorg/apache/httpcore/HttpVersion;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/httpcore/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/httpcore/ProtocolVersion;)V

    iput-object v0, p0, Lorg/apache/httpcore/message/f;->e:Lorg/apache/httpcore/w;

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/message/f;->e:Lorg/apache/httpcore/w;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/httpcore/message/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/httpcore/message/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/httpcore/message/f;->a:Lorg/apache/httpcore/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
