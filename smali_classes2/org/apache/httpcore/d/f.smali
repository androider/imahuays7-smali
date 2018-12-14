.class public Lorg/apache/httpcore/d/f;
.super Ljava/lang/Object;
.source "HttpDateGenerator.java"


# static fields
.field public static final a:Ljava/util/TimeZone;


# instance fields
.field private final b:Ljava/text/DateFormat;

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT"

    .line 52
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/d/f;->a:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lorg/apache/httpcore/d/f;->c:J

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/apache/httpcore/d/f;->d:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/httpcore/d/f;->b:Ljava/text/DateFormat;

    .line 61
    iget-object v0, p0, Lorg/apache/httpcore/d/f;->b:Ljava/text/DateFormat;

    sget-object v1, Lorg/apache/httpcore/d/f;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 66
    iget-wide v2, p0, Lorg/apache/httpcore/d/f;->c:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 68
    iget-object v2, p0, Lorg/apache/httpcore/d/f;->b:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/httpcore/d/f;->d:Ljava/lang/String;

    .line 69
    iput-wide v0, p0, Lorg/apache/httpcore/d/f;->c:J

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/d/f;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 64
    monitor-exit p0

    throw v0
.end method
