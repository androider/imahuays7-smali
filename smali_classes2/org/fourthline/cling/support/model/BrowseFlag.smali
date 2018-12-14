.class public final enum Lorg/fourthline/cling/support/model/BrowseFlag;
.super Ljava/lang/Enum;
.source "BrowseFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/BrowseFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/BrowseFlag;

.field public static final enum DIRECT_CHILDREN:Lorg/fourthline/cling/support/model/BrowseFlag;

.field public static final enum METADATA:Lorg/fourthline/cling/support/model/BrowseFlag;


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/model/BrowseFlag;

    const-string v1, "METADATA"

    const-string v2, "BrowseMetadata"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/support/model/BrowseFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/BrowseFlag;->METADATA:Lorg/fourthline/cling/support/model/BrowseFlag;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/BrowseFlag;

    const-string v1, "DIRECT_CHILDREN"

    const-string v2, "BrowseDirectChildren"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/model/BrowseFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/fourthline/cling/support/model/BrowseFlag;

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Lorg/fourthline/cling/support/model/BrowseFlag;

    sget-object v1, Lorg/fourthline/cling/support/model/BrowseFlag;->METADATA:Lorg/fourthline/cling/support/model/BrowseFlag;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/fourthline/cling/support/model/BrowseFlag;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/support/model/BrowseFlag;->$VALUES:[Lorg/fourthline/cling/support/model/BrowseFlag;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lorg/fourthline/cling/support/model/BrowseFlag;->protocolString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseFlag;
    .locals 1

    .line 22
    const-class v0, Lorg/fourthline/cling/support/model/BrowseFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/BrowseFlag;

    return-object p0
.end method

.method public static valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/BrowseFlag;
    .locals 5

    .line 39
    invoke-static {}, Lorg/fourthline/cling/support/model/BrowseFlag;->values()[Lorg/fourthline/cling/support/model/BrowseFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/BrowseFlag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/BrowseFlag;
    .locals 1

    .line 22
    sget-object v0, Lorg/fourthline/cling/support/model/BrowseFlag;->$VALUES:[Lorg/fourthline/cling/support/model/BrowseFlag;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/BrowseFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/BrowseFlag;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/fourthline/cling/support/model/BrowseFlag;->protocolString:Ljava/lang/String;

    return-object v0
.end method
