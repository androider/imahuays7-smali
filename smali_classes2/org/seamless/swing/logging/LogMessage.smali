.class public Lorg/seamless/swing/logging/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# instance fields
.field private createdOn:Ljava/lang/Long;

.field private level:Ljava/util/logging/Level;

.field private message:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private thread:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lorg/seamless/swing/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lorg/seamless/swing/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, p2}, Lorg/seamless/swing/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/swing/logging/LogMessage;->createdOn:Ljava/lang/Long;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/swing/logging/LogMessage;->thread:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/seamless/swing/logging/LogMessage;->level:Ljava/util/logging/Level;

    .line 46
    iput-object p2, p0, Lorg/seamless/swing/logging/LogMessage;->source:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/seamless/swing/logging/LogMessage;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreatedOn()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/seamless/swing/logging/LogMessage;->createdOn:Ljava/lang/Long;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/seamless/swing/logging/LogMessage;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/seamless/swing/logging/LogMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/seamless/swing/logging/LogMessage;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/seamless/swing/logging/LogMessage;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogMessage;->getCreatedOn()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogMessage;->getThread()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogMessage;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
