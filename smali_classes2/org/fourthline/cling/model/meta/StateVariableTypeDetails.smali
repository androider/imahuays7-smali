.class public Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;
.super Ljava/lang/Object;
.source "StateVariableTypeDetails.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final allowedValueRange:Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

.field private final allowedValues:[Ljava/lang/String;

.field private final datatype:Lorg/fourthline/cling/model/types/Datatype;

.field private final defaultValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/Datatype;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->datatype:Lorg/fourthline/cling/model/types/Datatype;

    .line 53
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->allowedValueRange:Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    return-void
.end method


# virtual methods
.method protected foundDefaultInAllowedValues(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->allowedValueRange:Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    return-object v0
.end method

.method public getAllowedValues()[Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    iget-object v1, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->foundDefaultInAllowedValues(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->datatype:Lorg/fourthline/cling/model/types/Datatype;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "datatype"

    const-string v4, "Service state variable has no datatype"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 101
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "allowedValues"

    const-string v4, "Allowed value list of state variable can not also be restricted with allowed value range"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    sget-object v1, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "allowedValues"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allowed value list of state variable only available for string datatype, not: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-le v5, v6, :cond_3

    .line 119
    sget-object v5, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPnP specification violation, allowed value string must be less than 32 chars: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_4
    iget-object v1, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    iget-object v2, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->foundDefaultInAllowedValues(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 124
    sget-object v1, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation, allowed string values don\'t contain default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 130
    :cond_5
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 131
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v0
.end method
