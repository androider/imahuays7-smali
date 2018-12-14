.class public Lorg/eclipse/jetty/util/log/StdErrLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "StdErrLog.java"


# static fields
.field private static final EOL:Ljava/lang/String;

.field public static final LEVEL_ALL:I = 0x0

.field public static final LEVEL_DEBUG:I = 0x1

.field public static final LEVEL_INFO:I = 0x2

.field public static final LEVEL_WARN:I = 0x3

.field private static final __long:Z

.field private static final __props:Ljava/util/Properties;

.field private static final __source:Z

.field private static _dateCache:Lorg/eclipse/jetty/util/DateCache;


# instance fields
.field private final _abbrevname:Ljava/lang/String;

.field private _configuredLevel:I

.field private _hideStacks:Z

.field private _level:I

.field private final _name:Ljava/lang/String;

.field private _printLongNames:Z

.field private _source:Z

.field private _stderr:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "line.separator"

    .line 42
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    .line 46
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v1, "org.eclipse.jetty.util.log.SOURCE"

    sget-object v2, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v3, "org.eclipse.jetty.util.log.stderr.SOURCE"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    .line 48
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v1, "org.eclipse.jetty.util.log.stderr.LONG"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__long:Z

    .line 52
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    sget-object v1, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org.eclipse.jetty.util.log.DEBUG"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "org.eclipse.jetty.util.log.stderr.DEBUG"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 58
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 60
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 62
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "System Property [%s] has been deprecated! (Use org.eclipse.jetty.LEVEL=DEBUG instead)%n"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/DateCache;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/DateCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 101
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    const/4 v0, 0x2

    .line 81
    iput v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 85
    sget-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    .line 87
    sget-boolean v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__long:Z

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    if-eqz p2, :cond_0

    .line 106
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    if-eq p2, v0, :cond_0

    .line 107
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 108
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_abbrevname:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 111
    iget p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    .line 115
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".SOURCE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    sget-boolean p1, Lorg/eclipse/jetty/util/log/StdErrLog;->__source:Z

    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    :goto_0
    return-void
.end method

.method protected static condensePackageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\\."

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 212
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 214
    aget-object v3, p0, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2e

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 516
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 518
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 519
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/16 v1, 0x7c

    .line 523
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    const/16 v1, 0x3c

    .line 527
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v1, 0x3f

    .line 531
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 414
    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->isHideStacks()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 417
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private varargs format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 406
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 407
    sget-object v1, Lorg/eclipse/jetty/util/log/StdErrLog;->_dateCache:Lorg/eclipse/jetty/util/DateCache;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/DateCache;->lastMs()I

    move-result v1

    .line 408
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->tag(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    .line 409
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p2, ""

    move-object v1, p2

    const/4 p2, 0x0

    .line 487
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_0

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{} "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    :cond_1
    const-string v1, "{}"

    .line 494
    array-length v2, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v4, p3, v0

    .line 496
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_2

    .line 499
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v3, " "

    .line 500
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_2

    .line 506
    :cond_2
    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 507
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    move v3, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 5

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 545
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 549
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 552
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 554
    sget-object v3, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tat "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    .line 561
    sget-object p2, Lorg/eclipse/jetty/util/log/StdErrLog;->EOL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Caused by: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected static getLevelId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ALL"

    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v1, "DEBUG"

    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v1, "INFO"

    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string v1, "WARN"

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x3

    return p0

    .line 189
    :cond_4
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown StdErrLog level ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]=["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], expecting only [ALL, DEBUG, INFO, WARN] as values."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public static getLoggingLevel(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 3

    :goto_0
    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".LEVEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".LEVEL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x2e

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string p1, "log.LEVEL"

    const-string v0, "log.LEVEL"

    const-string v1, "INFO"

    .line 162
    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getLevelId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 1

    .line 617
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 618
    sget-object v0, Lorg/eclipse/jetty/util/log/StdErrLog;->__props:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private tag(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 428
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x63

    if-le p3, p2, :cond_0

    const/16 p2, 0x2e

    .line 431
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p2, 0x9

    if-le p3, p2, :cond_1

    const-string p2, ".0"

    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, ".00"

    .line 439
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-boolean p2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    if-eqz p2, :cond_2

    .line 444
    iget-object p2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 448
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_abbrevname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 p2, 0x3a

    .line 450
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    iget-boolean p3, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    if-eqz p3, :cond_7

    .line 453
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3}, Ljava/lang/Throwable;-><init>()V

    .line 454
    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    .line 455
    :goto_2
    array-length p4, p3

    if-ge v0, p4, :cond_7

    .line 457
    aget-object p4, p3, v0

    .line 458
    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 459
    const-class v2, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-class v2, Lorg/eclipse/jetty/util/log/Log;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    .line 463
    :cond_3
    iget-boolean p3, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    if-nez p3, :cond_4

    const-string p3, "org.eclipse.jetty."

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 465
    invoke-static {v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->condensePackageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 469
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 p3, 0x23

    .line 471
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    const/16 p3, 0x28

    .line 474
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 396
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":DBUG:"

    .line 399
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 381
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":DBUG:"

    .line 384
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 391
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getLevel()I
    .locals 1

    .line 357
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 3

    .line 623
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    if-gtz v0, :cond_1

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":IGNORED:"

    const-string v2, ""

    .line 626
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 314
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":INFO:"

    .line 317
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 299
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":INFO:"

    .line 302
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 309
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 324
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHideStacks()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    return v0
.end method

.method public isPrintLongNames()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    return v0
.end method

.method public isSource()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 2

    .line 573
    new-instance v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>(Ljava/lang/String;)V

    .line 575
    iget-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setPrintLongNames(Z)V

    .line 577
    iget-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setSource(Z)V

    .line 578
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    iput-object p1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    .line 581
    iget p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    if-eq p1, v1, :cond_0

    .line 582
    iget p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    iput p1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    :cond_0
    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 335
    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 337
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/log/Logger;

    .line 339
    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v2, :cond_0

    .line 340
    check-cast v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_0

    .line 345
    :cond_1
    iget p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    .line 347
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    .line 349
    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/StdErrLog;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    if-eqz v1, :cond_2

    .line 350
    check-cast v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    iget v1, v0, Lorg/eclipse/jetty/util/log/StdErrLog;->_configuredLevel:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/log/StdErrLog;->setLevel(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setHideStacks(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_hideStacks:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 371
    iput p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    return-void
.end method

.method public setPrintLongNames(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_printLongNames:Z

    return-void
.end method

.method public setSource(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_source:Z

    return-void
.end method

.method public setStdErrStream(Ljava/io/PrintStream;)V
    .locals 1

    .line 376
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StdErrLog:"

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":LEVEL="

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget v1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "?"

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, "WARN"

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "INFO"

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "DEBUG"

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "ALL"

    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 289
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":WARN:"

    .line 292
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 274
    iget v0, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":WARN:"

    .line 277
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/eclipse/jetty/util/log/StdErrLog;->format(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/log/StdErrLog;->_stderr:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, ""

    .line 284
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/StdErrLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
