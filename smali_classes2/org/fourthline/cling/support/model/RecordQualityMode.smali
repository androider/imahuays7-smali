.class public final enum Lorg/fourthline/cling/support/model/RecordQualityMode;
.super Ljava/lang/Enum;
.source "RecordQualityMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/RecordQualityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum BASIC:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum EP:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum HIGH:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum LP:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum MEDIUM:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

.field public static final enum SP:Lorg/fourthline/cling/support/model/RecordQualityMode;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "EP"

    const-string v2, "0:EP"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->EP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "LP"

    const-string v2, "1:LP"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->LP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "SP"

    const-string v2, "2:SP"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->SP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "BASIC"

    const-string v2, "0:BASIC"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->BASIC:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "MEDIUM"

    const-string v2, "1:MEDIUM"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->MEDIUM:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "HIGH"

    const-string v2, "2:HIGH"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->HIGH:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 34
    new-instance v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    const-string v1, "NOT_IMPLEMENTED"

    const-string v2, "NOT_IMPLEMENTED"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/fourthline/cling/support/model/RecordQualityMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    const/4 v0, 0x7

    .line 26
    new-array v0, v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->EP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->LP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->SP:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->BASIC:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->MEDIUM:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->HIGH:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v9

    sput-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->$VALUES:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 1

    .line 26
    const-class v0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object p0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 10

    .line 57
    invoke-static {p0}, Lorg/fourthline/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 58
    new-array p0, v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object p0

    .line 59
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 61
    invoke-static {}, Lorg/fourthline/cling/support/model/RecordQualityMode;->values()[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 62
    iget-object v9, v8, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 63
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object p0
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-static {}, Lorg/fourthline/cling/support/model/RecordQualityMode;->values()[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    iget-object v4, v3, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid record quality mode string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 1

    .line 26
    sget-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->$VALUES:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/RecordQualityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/fourthline/cling/support/model/RecordQualityMode;->protocolString:Ljava/lang/String;

    return-object v0
.end method
