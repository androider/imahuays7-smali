.class public Lorg/fourthline/cling/android/FixedAndroidLogHandler;
.super Ljava/util/logging/Handler;
.source "FixedAndroidLogHandler.java"


# static fields
.field private static final THE_FORMATTER:Ljava/util/logging/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/fourthline/cling/android/FixedAndroidLogHandler$1;

    invoke-direct {v0}, Lorg/fourthline/cling/android/FixedAndroidLogHandler$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/android/FixedAndroidLogHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 56
    sget-object v0, Lorg/fourthline/cling/android/FixedAndroidLogHandler;->THE_FORMATTER:Ljava/util/logging/Formatter;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/android/FixedAndroidLogHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    return-void
.end method

.method static getAndroidLevel(Ljava/util/logging/Level;)I
    .locals 1

    .line 133
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/16 v0, 0x384

    if-lt p0, v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 v0, 0x320

    if-lt p0, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 5

    .line 72
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/android/FixedAndroidLogHandler;->getAndroidLevel(Ljava/util/logging/Level;)I

    move-result v0

    .line 73
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x17

    if-le v2, v3, :cond_2

    const-string v4, "."

    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    if-gt v2, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/android/FixedAndroidLogHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "AndroidHandler"

    const-string v1, "Error logging message."

    .line 121
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
