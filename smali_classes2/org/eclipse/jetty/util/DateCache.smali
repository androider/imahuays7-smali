.class public Lorg/eclipse/jetty/util/DateCache;
.super Ljava/lang/Object;
.source "DateCache.java"


# static fields
.field public static DEFAULT_FORMAT:Ljava/lang/String; = "EEE MMM dd HH:mm:ss zzz yyyy"

.field private static __hitWindow:J = 0xe10L


# instance fields
.field private _dfs:Ljava/text/DateFormatSymbols;

.field private _formatString:Ljava/lang/String;

.field private _lastMinutes:J

.field private _lastMs:I

.field private _lastResult:Ljava/lang/String;

.field private _lastSeconds:J

.field private _locale:Ljava/util/Locale;

.field private _minFormat:Ljava/text/SimpleDateFormat;

.field private _minFormatString:Ljava/lang/String;

.field private _secFormatString:Ljava/lang/String;

.field private _secFormatString0:Ljava/lang/String;

.field private _secFormatString1:Ljava/lang/String;

.field private _tzFormat:Ljava/text/SimpleDateFormat;

.field private _tzFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    sget-object v0, Lorg/eclipse/jetty/util/DateCache;->DEFAULT_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/DateCache;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 63
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 68
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 63
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 68
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 103
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 105
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 63
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 68
    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    .line 95
    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    .line 97
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private setMinFormatString()V
    .locals 3

    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v1, "ss.SSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ms not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 205
    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'ss\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized setTzFormatString(Ljava/util/TimeZone;)V
    .locals 5

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    const-string v1, "ZZZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 158
    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p1, :cond_0

    const/16 v1, 0x2b

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    neg-int p1, p1

    const/16 v1, 0x2d

    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const v1, 0xea60

    .line 173
    div-int/2addr p1, v1

    .line 174
    div-int/lit8 v1, p1, 0x3c

    .line 175
    rem-int/lit8 p1, p1, 0x3c

    const/16 v3, 0x30

    if-ge v1, v4, :cond_1

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge p1, v4, :cond_2

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    .line 183
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    goto :goto_1

    .line 189
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    .line 190
    :goto_1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/DateCache;->setMinFormatString()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 154
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized format(J)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    const-wide/16 v0, 0x3e8

    .line 227
    :try_start_0
    div-long v0, p1, v0

    .line 230
    iget-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    iget-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    sget-wide v4, Lorg/eclipse/jetty/util/DateCache;->__hitWindow:J

    const/4 v6, 0x0

    add-long v6, v2, v4

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 242
    iget-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 244
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    const-wide/16 p1, 0x3c

    .line 247
    div-long v3, v0, p1

    .line 248
    iget-wide v5, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_2

    .line 250
    iput-wide v3, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J

    .line 251
    iget-object v3, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    const-string v3, "ss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 255
    iget-object v3, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString0:Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString1:Ljava/lang/String;

    .line 260
    :cond_2
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    iget-object v3, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    rem-long/2addr v0, p1

    long-to-int p1, v0

    const/16 p2, 0xa

    if-ge p1, p2, :cond_3

    const/16 p2, 0x30

    .line 265
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    iget-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_secFormatString1:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;

    .line 271
    iget-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_lastResult:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 234
    :cond_4
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 235
    iget-object p1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 226
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public format(JLjava/lang/StringBuilder;)V
    .locals 0

    .line 281
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public lastMs()I
    .locals 1

    .line 309
    iget v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    return v0
.end method

.method public now()Ljava/lang/String;
    .locals 4

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 302
    rem-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMs:I

    .line 303
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/DateCache;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setTimeZone(Ljava/util/TimeZone;)V
    .locals 3

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/DateCache;->setTzFormatString(Ljava/util/TimeZone;)V

    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/util/DateCache;->_dfs:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    .line 128
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormatString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    .line 130
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_tzFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/util/DateCache;->_minFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/16 v0, -0x1

    .line 132
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastSeconds:J

    .line 133
    iput-wide v0, p0, Lorg/eclipse/jetty/util/DateCache;->_lastMinutes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit p0

    throw p1
.end method

.method public setTimeZoneID(Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/DateCache;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
