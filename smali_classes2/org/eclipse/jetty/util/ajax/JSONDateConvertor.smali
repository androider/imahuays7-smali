.class public Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;
.super Ljava/lang/Object;
.source "JSONDateConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _dateCache:Lorg/eclipse/jetty/util/DateCache;

.field private final _format:Ljava/text/SimpleDateFormat;

.field private final _fromJSON:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 62
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    .line 63
    new-instance p3, Ljava/text/SimpleDateFormat;

    invoke-direct {p3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    .line 64
    iget-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;ZLjava/util/Locale;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    invoke-direct {v0, p1, p4}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    .line 72
    new-instance p3, Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p3, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object p3, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    .line 73
    iget-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 55
    sget-object v0, Lorg/eclipse/jetty/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Z)V

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 3

    .line 78
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    if-nez v0, :cond_0

    .line 79
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_format:Ljava/text/SimpleDateFormat;

    const-string v2, "value"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 89
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/DateCache;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ajax/JSONDateConvertor;->_fromJSON:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    const-string p1, "value"

    .line 100
    invoke-interface {p2, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
