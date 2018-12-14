.class public Lorg/seamless/swing/logging/LogCategory;
.super Ljava/lang/Object;
.source "LogCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/swing/logging/LogCategory$LoggerLevel;,
        Lorg/seamless/swing/logging/LogCategory$Group;
    }
.end annotation


# instance fields
.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory$Group;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogCategory;->groups:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogCategory;->groups:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategory;->name:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategory;->groups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategory;->groups:Ljava/util/List;

    new-instance v1, Lorg/seamless/swing/logging/LogCategory$Group;

    invoke-direct {v1, p1, p2}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory$Group;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategory;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategory;->name:Ljava/lang/String;

    return-object v0
.end method
