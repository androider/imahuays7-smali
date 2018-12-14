.class public Lorg/fourthline/cling/model/ValidationError;
.super Ljava/lang/Object;
.source "ValidationError.java"


# instance fields
.field private clazz:Ljava/lang/Class;

.field private message:Ljava/lang/String;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/fourthline/cling/model/ValidationError;->clazz:Ljava/lang/Class;

    .line 30
    iput-object p2, p0, Lorg/fourthline/cling/model/ValidationError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/fourthline/cling/model/ValidationError;->clazz:Ljava/lang/Class;

    .line 35
    iput-object p2, p0, Lorg/fourthline/cling/model/ValidationError;->propertyName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lorg/fourthline/cling/model/ValidationError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/fourthline/cling/model/ValidationError;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/fourthline/cling/model/ValidationError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/fourthline/cling/model/ValidationError;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ValidationError;->getClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", propertyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ValidationError;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/model/ValidationError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
