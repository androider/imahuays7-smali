.class public Lorg/fourthline/cling/model/DiscoveryOptions;
.super Ljava/lang/Object;
.source "DiscoveryOptions.java"


# static fields
.field private static simpleName:Ljava/lang/String; = "DiscoveryOptions"


# instance fields
.field protected advertised:Z

.field protected byeByeBeforeFirstAlive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lorg/fourthline/cling/model/DiscoveryOptions;->advertised:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/fourthline/cling/model/DiscoveryOptions;->advertised:Z

    .line 45
    iput-boolean p2, p0, Lorg/fourthline/cling/model/DiscoveryOptions;->byeByeBeforeFirstAlive:Z

    return-void
.end method


# virtual methods
.method public isAdvertised()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lorg/fourthline/cling/model/DiscoveryOptions;->advertised:Z

    return v0
.end method

.method public isByeByeBeforeFirstAlive()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/fourthline/cling/model/DiscoveryOptions;->byeByeBeforeFirstAlive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/fourthline/cling/model/DiscoveryOptions;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " advertised: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/DiscoveryOptions;->isAdvertised()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " byebyeBeforeFirstAlive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/DiscoveryOptions;->isByeByeBeforeFirstAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
