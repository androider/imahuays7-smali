.class public Lorg/fourthline/cling/model/types/ServiceId;
.super Ljava/lang/Object;
.source "ServiceId.java"


# static fields
.field public static final BROKEN_PATTERN:Ljava/util/regex/Pattern;

.field public static final PATTERN:Ljava/util/regex/Pattern;

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private id:Ljava/lang/String;

.field private namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/fourthline/cling/model/types/ServiceId;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/ServiceId;->log:Ljava/util/logging/Logger;

    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):serviceId:([a-zA-Z_0-9\\-:\\.]{1,64})"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/ServiceId;->PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):service:([a-zA-Z_0-9\\-:\\.]{1,64})"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/types/ServiceId;->BROKEN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "[a-zA-Z0-9\\-\\.]+"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Service ID namespace contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/types/ServiceId;->namespace:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "[a-zA-Z_0-9\\-:\\.]{1,64}"

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Service ID suffix too long (64) or contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    iput-object p2, p0, Lorg/fourthline/cling/model/types/ServiceId;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/ServiceId;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-static {p0}, Lorg/fourthline/cling/model/types/UDAServiceId;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDAServiceId;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lorg/fourthline/cling/model/types/ServiceId;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 82
    new-instance p0, Lorg/fourthline/cling/model/types/ServiceId;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/fourthline/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 85
    :cond_1
    sget-object v0, Lorg/fourthline/cling/model/types/ServiceId;->BROKEN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v2, :cond_2

    .line 87
    new-instance p0, Lorg/fourthline/cling/model/types/ServiceId;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/fourthline/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string v0, "urn:([a-zA-Z0-9\\-\\.]+):serviceId:"

    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 94
    sget-object v1, Lorg/fourthline/cling/model/types/ServiceId;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPnP specification violation, no service ID token, defaulting to UNKNOWN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 95
    new-instance p0, Lorg/fourthline/cling/model/types/ServiceId;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string v0, "[:]"

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 101
    sget-object v1, Lorg/fourthline/cling/model/types/ServiceId;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPnP specification violation, trying a simple colon-split of: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 102
    new-instance p0, Lorg/fourthline/cling/model/types/ServiceId;

    aget-object v1, v0, v3

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-direct {p0, v1, v0}, Lorg/fourthline/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 105
    :cond_4
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse service ID string (namespace/id): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 116
    instance-of v2, p1, Lorg/fourthline/cling/model/types/ServiceId;

    if-nez v2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/types/ServiceId;

    .line 120
    iget-object v2, p0, Lorg/fourthline/cling/model/types/ServiceId;->id:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/ServiceId;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 121
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/model/types/ServiceId;->namespace:Ljava/lang/String;

    iget-object p1, p1, Lorg/fourthline/cling/model/types/ServiceId;->namespace:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/fourthline/cling/model/types/ServiceId;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/fourthline/cling/model/types/ServiceId;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/fourthline/cling/model/types/ServiceId;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Lorg/fourthline/cling/model/types/ServiceId;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/ServiceId;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":serviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/ServiceId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
