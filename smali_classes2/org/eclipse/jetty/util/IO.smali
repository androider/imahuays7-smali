.class public Lorg/eclipse/jetty/util/IO;
.super Ljava/lang/Object;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/IO$NullWrite;,
        Lorg/eclipse/jetty/util/IO$ClosedIS;,
        Lorg/eclipse/jetty/util/IO$NullOS;,
        Lorg/eclipse/jetty/util/IO$Job;,
        Lorg/eclipse/jetty/util/IO$Singleton;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final CRLF_BYTES:[B

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __closedStream:Lorg/eclipse/jetty/util/IO$ClosedIS; = null

.field private static __nullPrintWriter:Ljava/io/PrintWriter; = null

.field private static __nullStream:Lorg/eclipse/jetty/util/IO$NullOS; = null

.field private static __nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite; = null

.field public static bufferSize:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lorg/eclipse/jetty/util/IO;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/IO;->CRLF_BYTES:[B

    .line 474
    new-instance v0, Lorg/eclipse/jetty/util/IO$NullOS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$NullOS;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__nullStream:Lorg/eclipse/jetty/util/IO$NullOS;

    .line 487
    new-instance v0, Lorg/eclipse/jetty/util/IO$ClosedIS;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$ClosedIS;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__closedStream:Lorg/eclipse/jetty/util/IO$ClosedIS;

    .line 526
    new-instance v0, Lorg/eclipse/jetty/util/IO$NullWrite;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$NullWrite;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite;

    .line 527
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/eclipse/jetty/util/IO;->__nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->__nullPrintWriter:Ljava/io/PrintWriter;

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .line 42
    sget-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 375
    sget-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 437
    sget-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static close(Ljava/io/Reader;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 392
    sget-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static close(Ljava/io/Writer;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 406
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 409
    sget-object v0, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/IO;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 143
    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    new-array v0, v0, [B

    .line 182
    sget v1, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_2

    :goto_0
    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    .line 188
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    int-to-long v5, v3

    cmp-long v3, p2, v5

    if-gez v3, :cond_0

    long-to-int v3, p2

    goto :goto_1

    :cond_0
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    .line 189
    :goto_1
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    goto :goto_3

    :cond_1
    int-to-long v5, v3

    sub-long v7, p2, v5

    .line 195
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    move-wide p2, v7

    goto :goto_0

    .line 202
    :cond_2
    :goto_2
    sget p2, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v4, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    if-gez p2, :cond_4

    :cond_3
    :goto_3
    return-void

    .line 205
    :cond_4
    invoke-virtual {p1, v0, v4, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 170
    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    new-array v0, v0, [C

    .line 219
    sget v1, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_2

    :goto_0
    cmp-long v3, p2, v1

    if-lez v3, :cond_5

    .line 225
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    int-to-long v6, v3

    cmp-long v3, p2, v6

    if-gez v3, :cond_0

    long-to-int v3, p2

    .line 226
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    goto :goto_1

    .line 228
    :cond_0
    sget v3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    :goto_1
    if-ne v3, v4, :cond_1

    goto :goto_4

    :cond_1
    int-to-long v6, v3

    sub-long v8, p2, v6

    .line 234
    invoke-virtual {p1, v0, v5, v3}, Ljava/io/Writer;->write([CII)V

    move-wide p2, v8

    goto :goto_0

    .line 237
    :cond_2
    instance-of p2, p1, Ljava/io/PrintWriter;

    if-eqz p2, :cond_4

    .line 239
    move-object p2, p1

    check-cast p2, Ljava/io/PrintWriter;

    .line 240
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->checkError()Z

    move-result p3

    if-nez p3, :cond_5

    .line 242
    sget p3, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, p3}, Ljava/io/Reader;->read([CII)I

    move-result p3

    if-ne p3, v4, :cond_3

    goto :goto_4

    .line 245
    :cond_3
    invoke-virtual {p1, v0, v5, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 252
    :cond_4
    :goto_3
    sget p2, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v0, v5, p2}, Ljava/io/Reader;->read([CII)I

    move-result p2

    if-ne p2, v4, :cond_6

    :cond_5
    :goto_4
    return-void

    .line 255
    :cond_6
    invoke-virtual {p1, v0, v5, p2}, Ljava/io/Writer;->write([CII)V

    goto :goto_3
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 283
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    .line 288
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    .line 290
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 291
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".."

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 293
    :cond_2
    aget-object v2, p0, v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 302
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 303
    invoke-static {v0, p0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 305
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public static copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 127
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/IO$Job;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/util/IO$Job;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    sget-object p0, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 129
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IO$Job;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    sget-object p1, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p1, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static copyThread(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1

    .line 154
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/IO$Job;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/util/IO$Job;-><init>(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 155
    sget-object p0, Lorg/eclipse/jetty/util/IO$Singleton;->__pool:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IO$Job;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    sget-object p1, Lorg/eclipse/jetty/util/IO;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {p1, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 3

    .line 349
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 351
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 354
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 355
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static getClosedStream()Ljava/io/InputStream;
    .locals 1

    .line 456
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__closedStream:Lorg/eclipse/jetty/util/IO$ClosedIS;

    return-object v0
.end method

.method public static getNullPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    .line 504
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__nullPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getNullStream()Ljava/io/OutputStream;
    .locals 1

    .line 447
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__nullStream:Lorg/eclipse/jetty/util/IO$NullOS;

    return-object v0
.end method

.method public static getNullWriter()Ljava/io/Writer;
    .locals 1

    .line 495
    sget-object v0, Lorg/eclipse/jetty/util/IO;->__nullWriter:Lorg/eclipse/jetty/util/IO$NullWrite;

    return-object v0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 419
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    if-nez p1, :cond_0

    .line 324
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, v1

    .line 326
    :goto_0
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 327
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 337
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 338
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
