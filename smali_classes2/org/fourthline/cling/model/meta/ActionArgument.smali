.class public Lorg/fourthline/cling/model/meta/ActionArgument;
.super Ljava/lang/Object;
.source "ActionArgument.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/model/meta/ActionArgument$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private action:Lorg/fourthline/cling/model/meta/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final aliases:[Ljava/lang/String;

.field private final direction:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

.field private final name:Ljava/lang/String;

.field private final relatedStateVariableName:Ljava/lang/String;

.field private final returnValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/fourthline/cling/model/meta/ActionArgument;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;)V
    .locals 7

    const/4 v0, 0x0

    .line 53
    new-array v3, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 61
    new-array v3, v0, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 57
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->aliases:[Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->relatedStateVariableName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->direction:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    .line 69
    iput-boolean p5, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->returnValue:Z

    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 151
    new-instance v6, Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 152
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getAliases()[Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v4

    .line 156
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ActionArgument$Direction;Z)V

    return-object v6
.end method

.method public getAction()Lorg/fourthline/cling/model/meta/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->action:Lorg/fourthline/cling/model/meta/Action;

    return-object v0
.end method

.method public getAliases()[Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->aliases:[Ljava/lang/String;

    return-object v0
.end method

.method public getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/fourthline/cling/model/meta/Service;->getDatatype(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->direction:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedStateVariableName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->relatedStateVariableName:Ljava/lang/String;

    return-object v0
.end method

.method public isNameOrAlias(Ljava/lang/String;)Z
    .locals 6

    .line 81
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->aliases:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 83
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public isReturnValue()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->returnValue:Z

    return v0
.end method

.method setAction(Lorg/fourthline/cling/model/meta/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->action:Lorg/fourthline/cling/model/meta/Action;

    if-eqz v0, :cond_0

    .line 106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Final value has been set already, model is immutable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/ActionArgument;->action:Lorg/fourthline/cling/model/meta/Action;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    sget-object v1, Lorg/fourthline/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 125
    sget-object v1, Lorg/fourthline/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    .line 127
    sget-object v1, Lorg/fourthline/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 128
    sget-object v1, Lorg/fourthline/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument name should be less than 32 characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Argument without name of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    if-nez v1, :cond_4

    .line 132
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "direction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Argument \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' requires a direction, either IN or OUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_4
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    sget-object v2, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    if-eq v1, v2, :cond_5

    .line 140
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "direction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Return value argument \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' must be direction OUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method
