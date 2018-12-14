.class public Lorg/fourthline/cling/model/types/SoapActionType;
.super Ljava/lang/Object;
.source "SoapActionType.java"


# static fields
.field public static final MAGIC_CONTROL_NS:Ljava/lang/String; = "schemas-upnp-org"

.field public static final MAGIC_CONTROL_TYPE:Ljava/lang/String; = "control-1-0"

.field public static final PATTERN:Ljava/util/regex/Pattern;

.field public static final PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;


# instance fields
.field private actionName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "urn:schemas-upnp-org:control-1-0#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;

    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-]{1,64}):([0-9]+)#([a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*)"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    .line 53
    iput-object p4, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 55
    invoke-static {p4}, Lorg/fourthline/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Action name contains illegal characters: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ServiceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ServiceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/ServiceType;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/SoapActionType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 77
    sget-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN_MAGIC_CONTROL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 80
    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    new-instance v3, Lorg/fourthline/cling/model/types/SoapActionType;

    const-string v4, "schemas-upnp-org"

    const-string v5, "control-1-0"

    const/4 v6, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v3

    .line 84
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/types/SoapActionType;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    new-instance v3, Lorg/fourthline/cling/model/types/SoapActionType;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 93
    :cond_1
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse action type string (namespace/type/version#actionName): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 89
    new-instance v3, Lorg/fourthline/cling/model/types/InvalidValueException;

    const-string v4, "Can\'t parse action type string (namespace/type/version#actionName) \'%s\': %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v1, v5

    .line 90
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 89
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 117
    instance-of v2, p1, Lorg/fourthline/cling/model/types/SoapActionType;

    if-nez v2, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/types/SoapActionType;

    .line 121
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 122
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 123
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 124
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    iget-object p1, p1, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_5
    iget-object p1, p1, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    :goto_0
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Lorg/fourthline/cling/model/types/ServiceType;
    .locals 4

    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/ServiceType;

    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    iget-object v2, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    iget-object v3, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/fourthline/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getVersion()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/fourthline/cling/model/types/SoapActionType;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->actionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fourthline/cling/model/types/SoapActionType;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
