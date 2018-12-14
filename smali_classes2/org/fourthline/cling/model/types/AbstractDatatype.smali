.class public abstract Lorg/fourthline/cling/model/types/AbstractDatatype;
.super Ljava/lang/Object;
.source "AbstractDatatype.java"

# interfaces
.implements Lorg/fourthline/cling/model/types/Datatype;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/model/types/Datatype<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private builtin:Lorg/fourthline/cling/model/types/Datatype$Builtin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/fourthline/cling/model/types/AbstractDatatype;->builtin:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-object v0
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .line 67
    instance-of v0, p0, Lorg/fourthline/cling/model/types/CustomDatatype;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p0

    check-cast v0, Lorg/fourthline/cling/model/types/CustomDatatype;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/CustomDatatype;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/types/AbstractDatatype;->isValid(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getValueType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public isHandlingJavaType(Ljava/lang/Class;)Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/AbstractDatatype;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setBuiltin(Lorg/fourthline/cling/model/types/Datatype$Builtin;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/fourthline/cling/model/types/AbstractDatatype;->builtin:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
