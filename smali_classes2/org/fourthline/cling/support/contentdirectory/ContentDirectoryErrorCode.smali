.class public final enum Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
.super Ljava/lang/Enum;
.source "ContentDirectoryErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

.field public static final enum CANNOT_PROCESS:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

.field public static final enum NO_SUCH_OBJECT:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

.field public static final enum UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    const-string v1, "NO_SUCH_OBJECT"

    const-string v2, "The specified ObjectID is invalid"

    const/4 v3, 0x0

    const/16 v4, 0x2bd

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->NO_SUCH_OBJECT:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    const-string v1, "UNSUPPORTED_SORT_CRITERIA"

    const-string v2, "Unsupported or invalid sort criteria"

    const/4 v4, 0x1

    const/16 v5, 0x2c5

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    const-string v1, "CANNOT_PROCESS"

    const-string v2, "Cannot process the request"

    const/4 v5, 0x2

    const/16 v6, 0x2d0

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->CANNOT_PROCESS:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->NO_SUCH_OBJECT:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->CANNOT_PROCESS:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->$VALUES:[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->code:I

    .line 32
    iput-object p4, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(I)Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
    .locals 5

    .line 44
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->values()[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->$VALUES:[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
