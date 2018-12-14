.class public Lorg/eclipse/jetty/util/MultiPartOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MultiPartOutputStream.java"


# static fields
.field public static MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"

.field public static MULTIPART_X_MIXED_REPLACE:Ljava/lang/String; = "multipart/x-mixed-replace"

.field private static final __CRLF:[B

.field private static final __DASHDASH:[B


# instance fields
.field private boundary:Ljava/lang/String;

.field private boundaryBytes:[B

.field private inPart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 35
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    .line 36
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__DASHDASH:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jetty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->boundary:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->boundary:Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->boundaryBytes:[B

    .line 58
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->boundaryBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    .line 78
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getOut()Ljava/io/OutputStream;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public startPart(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->boundaryBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 104
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public startPart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->inPart:Z

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__DASHDASH:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->boundaryBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 121
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 122
    array-length v0, p2

    if-ge p1, v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    aget-object v1, p2, p1

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object p2, Lorg/eclipse/jetty/util/MultiPartOutputStream;->__CRLF:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
