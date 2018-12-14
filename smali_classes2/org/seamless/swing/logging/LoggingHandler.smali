.class public abstract Lorg/seamless/swing/logging/LoggingHandler;
.super Ljava/util/logging/Handler;
.source "LoggingHandler.java"


# instance fields
.field public sourcePathElements:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lorg/seamless/swing/logging/LoggingHandler;->sourcePathElements:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lorg/seamless/swing/logging/LoggingHandler;->sourcePathElements:I

    .line 32
    iput p1, p0, Lorg/seamless/swing/logging/LoggingHandler;->sourcePathElements:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method protected getSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 5

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    array-length v2, v1

    iget v3, p0, Lorg/seamless/swing/logging/LoggingHandler;->sourcePathElements:I

    if-le v2, v3, :cond_0

    .line 55
    array-length v2, v1

    iget v3, p0, Lorg/seamless/swing/logging/LoggingHandler;->sourcePathElements:I

    sub-int/2addr v2, v3

    array-length v3, v1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 57
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract log(Lorg/seamless/swing/logging/LogMessage;)V
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 3

    .line 36
    new-instance v0, Lorg/seamless/swing/logging/LogMessage;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/seamless/swing/logging/LoggingHandler;->getSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/seamless/swing/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v0}, Lorg/seamless/swing/logging/LoggingHandler;->log(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
