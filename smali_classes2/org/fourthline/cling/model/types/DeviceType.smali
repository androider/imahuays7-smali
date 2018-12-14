.class public Lorg/fourthline/cling/model/types/DeviceType;
.super Ljava/lang/Object;
.source "DeviceType.java"


# static fields
.field public static final PATTERN:Ljava/util/regex/Pattern;

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private namespace:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/DeviceType;->log:Ljava/util/logging/Logger;

    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):device:([a-zA-Z_0-9\\-]{1,64}):([0-9]+).*"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/DeviceType;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    if-eqz p1, :cond_0

    const-string v0, "[a-zA-Z0-9\\-\\.]+"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Device type namespace contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "[a-zA-Z_0-9\\-]{1,64}"

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Device type suffix too long (64) or contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    iput-object p2, p0, Lorg/fourthline/cling/model/types/DeviceType;->type:Ljava/lang/String;

    .line 61
    iput p3, p0, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DeviceType;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    const-string v0, "\\s"

    const-string v1, ""

    .line 84
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/model/types/UDADeviceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDADeviceType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 98
    :try_start_1
    sget-object v2, Lorg/fourthline/cling/model/types/DeviceType;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_1

    .line 100
    new-instance v3, Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v5, v6, v2}, Lorg/fourthline/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    :cond_1
    const-string v2, "urn:([a-zA-Z0-9\\-\\.]+):device::([0-9]+).*"

    .line 105
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lt v3, v1, :cond_2

    .line 107
    sget-object v3, Lorg/fourthline/cling/model/types/DeviceType;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPnP specification violation, no device type token, defaulting to UNKNOWN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 108
    new-instance v3, Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lorg/fourthline/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    :cond_2
    const-string v2, "urn:([a-zA-Z0-9\\-\\.]+):device:(.+?):([0-9]+).*"

    .line 113
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lt v3, v4, :cond_3

    .line 115
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "[^a-zA-Z_0-9\\-]"

    const-string v6, "-"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    sget-object v5, Lorg/fourthline/cling/model/types/DeviceType;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPnP specification violation, replacing invalid device type token \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' with: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 122
    new-instance v5, Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v5, v6, v3, v2}, Lorg/fourthline/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    .line 130
    :cond_3
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse device type string (namespace/type/version): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v2

    .line 125
    new-instance v3, Lorg/fourthline/cling/model/types/InvalidValueException;

    const-string v4, "Can\'t parse device type string (namespace/type/version) \'%s\': %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v1, v5

    .line 126
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    .line 125
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

    if-eqz p1, :cond_5

    .line 152
    instance-of v2, p1, Lorg/fourthline/cling/model/types/DeviceType;

    if-nez v2, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/types/DeviceType;

    .line 156
    iget v2, p0, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    iget v3, p1, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    if-eq v2, v3, :cond_2

    return v1

    .line 157
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 158
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/model/types/DeviceType;->type:Ljava/lang/String;

    iget-object p1, p1, Lorg/fourthline/cling/model/types/DeviceType;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 166
    iget-object v1, p0, Lorg/fourthline/cling/model/types/DeviceType;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget v1, p0, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implementsVersion(Lorg/fourthline/cling/model/types/DeviceType;)Z
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    iget-object v1, p1, Lorg/fourthline/cling/model/types/DeviceType;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->type:Ljava/lang/String;

    iget-object v2, p1, Lorg/fourthline/cling/model/types/DeviceType;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 136
    :cond_1
    iget v0, p0, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    iget p1, p1, Lorg/fourthline/cling/model/types/DeviceType;->version:I

    if-ge v0, p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/DeviceType;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
