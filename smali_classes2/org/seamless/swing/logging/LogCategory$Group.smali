.class public Lorg/seamless/swing/logging/LogCategory$Group;
.super Ljava/lang/Object;
.source "LogCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/swing/logging/LogCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation


# instance fields
.field private enabled:Z

.field private loggerLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private previousLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategory$Group;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategory$Group;->name:Ljava/lang/String;

    .line 64
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLoggerLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->loggerLevels:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory$LoggerLevel;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/seamless/swing/logging/LogCategory$Group;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lorg/seamless/swing/logging/LogCategory$Group;->enabled:Z

    return-void
.end method

.method public setPreviousLevels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory$LoggerLevel;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategory$Group;->previousLevels:Ljava/util/List;

    return-void
.end method
