.class public Lorg/eclipse/jetty/util/MultiPartWriter;
.super Ljava/io/FilterWriter;
.source "MultiPartWriter.java"


# static fields
.field public static MULTIPART_MIXED:Ljava/lang/String; = null

.field public static MULTIPART_X_MIXED_REPLACE:Ljava/lang/String; = null

.field private static final __CRLF:Ljava/lang/String; = "\r\n"

.field private static final __DASHDASH:Ljava/lang/String; = "--"


# instance fields
.field private boundary:Ljava/lang/String;

.field private inPart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->MULTIPART_MIXED:Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartWriter;->MULTIPART_MIXED:Ljava/lang/String;

    .line 39
    sget-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartWriter;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    .line 52
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

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->boundary:Ljava/lang/String;

    .line 55
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

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

    .line 66
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    .line 73
    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    return-void
.end method

.method public endPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public startPart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    return-void
.end method

.method public startPart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 125
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->inPart:Z

    return-void
.end method
