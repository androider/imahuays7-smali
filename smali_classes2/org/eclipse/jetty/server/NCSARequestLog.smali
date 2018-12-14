.class public Lorg/eclipse/jetty/server/NCSARequestLog;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "NCSARequestLog.java"

# interfaces
.implements Lorg/eclipse/jetty/server/RequestLog;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static _buffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _append:Z

.field private _closeOut:Z

.field private _extended:Z

.field private transient _fileOut:Ljava/io/OutputStream;

.field private _filename:Ljava/lang/String;

.field private _filenameDateFormat:Ljava/lang/String;

.field private transient _ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _ignorePaths:[Ljava/lang/String;

.field private _logCookies:Z

.field private transient _logDateCache:Lorg/eclipse/jetty/util/DateCache;

.field private _logDateFormat:Ljava/lang/String;

.field private _logDispatch:Z

.field private _logLatency:Z

.field private _logLocale:Ljava/util/Locale;

.field private _logServer:Z

.field private _logTimeZone:Ljava/lang/String;

.field private transient _out:Ljava/io/OutputStream;

.field private _preferProxiedForAddress:Z

.field private _retainDays:I

.field private transient _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/eclipse/jetty/server/NCSARequestLog;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 56
    new-instance v0, Lorg/eclipse/jetty/server/NCSARequestLog$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/NCSARequestLog$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->_buffers:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    .line 71
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    const-string v0, "GMT"

    .line 74
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 77
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 78
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 79
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 94
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    const/16 v0, 0x1f

    .line 95
    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    const-string v0, "dd/MMM/yyyy:HH:mm:ss Z"

    .line 71
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    const-string v0, "GMT"

    .line 74
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    .line 77
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    .line 78
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    .line 79
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    .line 109
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    const/16 v0, 0x1f

    .line 110
    iput v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    .line 111
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/NCSARequestLog;->setFilename(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized doStart()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 655
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 658
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZoneID(Ljava/lang/String;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 663
    new-instance v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    iget-object v3, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    iget v5, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 665
    sget-object v0, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/NCSARequestLog;->getDatedFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    .line 670
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 674
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 675
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 676
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    iget-object v2, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 681
    :cond_3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 683
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 684
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :try_start_2
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 686
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 684
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 654
    monitor-exit p0

    throw v0
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 697
    monitor-enter p0

    .line 699
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 707
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 709
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 712
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 716
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_out:Ljava/io/OutputStream;

    .line 720
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    const/4 v1, 0x0

    .line 721
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_closeOut:Z

    .line 722
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 723
    iput-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    .line 724
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    check-cast v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->getDatedFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameDateFormat()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnorePaths()[Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getLogCookies()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    return v0
.end method

.method public getLogDateFormat()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLatency()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    return v0
.end method

.method public getLogLocale()Ljava/util/Locale;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLogServer()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    return v0
.end method

.method public getLogTimeZone()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferProxiedForAddress()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    return v0
.end method

.method public getRetainDays()I
    .locals 1

    .line 246
    iget v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    return v0
.end method

.method public isExtended()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    return v0
.end method

.method public isLogDispatch()Z
    .locals 1

    .line 453
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    return v0
.end method

.method public log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 466
    :try_start_0
    iget-object v3, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v3, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_fileOut:Ljava/io/OutputStream;

    if-nez v3, :cond_1

    return-void

    .line 472
    :cond_1
    sget-object v3, Lorg/eclipse/jetty/server/NCSARequestLog;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    iget-boolean v5, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    const/16 v6, 0x20

    if-eqz v5, :cond_2

    .line 477
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v5, 0x0

    .line 482
    iget-boolean v7, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    if-eqz v7, :cond_3

    const-string v5, "X-Forwarded-For"

    .line 484
    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-nez v5, :cond_4

    .line 488
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v5

    .line 490
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    .line 491
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v5

    .line 493
    instance-of v7, v5, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v7, :cond_5

    .line 494
    check-cast v5, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v5}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v5, " - "

    .line 496
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v5, " ["

    .line 498
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v5, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    if-eqz v5, :cond_6

    .line 500
    iget-object v5, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 502
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v5, "] \""

    .line 504
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/HttpURI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" "

    .line 510
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 513
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v5

    if-gtz v5, :cond_7

    const/16 v5, 0x194

    .line 516
    :cond_7
    div-int/lit8 v7, v5, 0x64

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    div-int/lit8 v7, v5, 0xa

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    rem-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v5, "Async"

    .line 521
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getContentCount()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-ltz v5, :cond_e

    .line 526
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/32 v11, 0x1869f

    cmp-long v5, v7, v11

    if-lez v5, :cond_9

    .line 528
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    const-wide/16 v11, 0x270f

    cmp-long v5, v7, v11

    const-wide/16 v11, 0x30

    const-wide/16 v13, 0xa

    if-lez v5, :cond_a

    const-wide/16 v15, 0x2710

    .line 532
    div-long v15, v7, v15

    rem-long/2addr v15, v13

    const/4 v5, 0x0

    add-long v4, v15, v11

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const-wide/16 v4, 0x3e7

    cmp-long v15, v7, v4

    if-lez v15, :cond_b

    const-wide/16 v4, 0x3e8

    .line 534
    div-long v4, v7, v4

    rem-long/2addr v4, v13

    const/4 v15, 0x0

    add-long v9, v4, v11

    long-to-int v4, v9

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const-wide/16 v4, 0x63

    cmp-long v9, v7, v4

    if-lez v9, :cond_c

    const-wide/16 v4, 0x64

    .line 536
    div-long v4, v7, v4

    rem-long/2addr v4, v13

    const/4 v9, 0x0

    add-long v9, v4, v11

    long-to-int v4, v9

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const-wide/16 v4, 0x9

    cmp-long v9, v7, v4

    if-lez v9, :cond_d

    .line 538
    div-long v4, v7, v13

    rem-long/2addr v4, v13

    const/4 v9, 0x0

    add-long v9, v4, v11

    long-to-int v4, v9

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    :cond_d
    rem-long/2addr v7, v13

    const/4 v4, 0x0

    add-long v4, v7, v11

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    const-string v4, " - "

    .line 544
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :goto_4
    iget-boolean v4, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    if-eqz v4, :cond_f

    move-object/from16 v4, p2

    .line 548
    invoke-virtual {v1, v2, v4, v3}, Lorg/eclipse/jetty/server/NCSARequestLog;->logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V

    .line 550
    :cond_f
    iget-boolean v4, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    if-eqz v4, :cond_14

    .line 552
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 553
    array-length v5, v4

    if-nez v5, :cond_10

    goto :goto_6

    :cond_10
    const-string v5, " \""

    .line 557
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 558
    :goto_5
    array-length v7, v4

    if-ge v5, v7, :cond_12

    if-eqz v5, :cond_11

    const/16 v7, 0x3b

    .line 561
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    :cond_11
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3d

    .line 563
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_12
    const/16 v4, 0x22

    .line 566
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_13
    :goto_6
    const-string v4, " -"

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_14
    :goto_7
    iget-boolean v4, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    if-nez v4, :cond_15

    iget-boolean v4, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    if-eqz v4, :cond_18

    .line 572
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 574
    iget-boolean v7, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    if-eqz v7, :cond_17

    .line 576
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getDispatchTime()J

    move-result-wide v7

    .line 577
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_16

    .line 578
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v7

    :cond_16
    const/4 v9, 0x0

    sub-long v9, v4, v7

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 581
    :cond_17
    iget-boolean v7, v1, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    if-eqz v7, :cond_18

    .line 583
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v6

    const/4 v2, 0x0

    sub-long v8, v4, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    :cond_18
    sget-object v2, Lorg/eclipse/jetty/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/NCSARequestLog;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 595
    sget-object v3, Lorg/eclipse/jetty/server/NCSARequestLog;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method protected logExtended(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Referer"

    .line 625
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x22

    if-nez p2, :cond_0

    const-string p2, "\"-\" "

    .line 627
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" "

    .line 632
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "User-Agent"

    .line 635
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/server/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\"-\" "

    .line 637
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 640
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_append:Z

    return-void
.end method

.method public setExtended(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_extended:Z

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 131
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filename:Ljava/lang/String;

    return-void
.end method

.method public setFilenameDateFormat(Ljava/lang/String;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_filenameDateFormat:Ljava/lang/String;

    return-void
.end method

.method public setIgnorePaths([Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_ignorePaths:[Ljava/lang/String;

    return-void
.end method

.method public setLogCookies(Z)V
    .locals 0

    .line 326
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logCookies:Z

    return-void
.end method

.method public setLogDateFormat(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDateFormat:Ljava/lang/String;

    return-void
.end method

.method public setLogDispatch(Z)V
    .locals 0

    .line 442
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logDispatch:Z

    return-void
.end method

.method public setLogLatency(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLatency:Z

    return-void
.end method

.method public setLogLocale(Ljava/util/Locale;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logLocale:Ljava/util/Locale;

    return-void
.end method

.method public setLogServer(Z)V
    .locals 0

    .line 349
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logServer:Z

    return-void
.end method

.method public setLogTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_logTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setPreferProxiedForAddress(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_preferProxiedForAddress:Z

    return-void
.end method

.method public setRetainDays(I)V
    .locals 0

    .line 235
    iput p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_retainDays:I

    return-void
.end method

.method protected write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 605
    monitor-exit p0

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 607
    iget-object p1, p0, Lorg/eclipse/jetty/server/NCSARequestLog;->_writer:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 608
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
