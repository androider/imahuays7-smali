.class public final enum Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;
.super Ljava/lang/Enum;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/contentdirectory/callback/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

.field public static final enum LOADING:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

.field public static final enum NO_CONTENT:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

.field public static final enum OK:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;


# instance fields
.field private defaultMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    const-string v1, "NO_CONTENT"

    const-string v2, "No Content"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->NO_CONTENT:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    .line 42
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    const-string v1, "LOADING"

    const-string v2, "Loading..."

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->LOADING:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    .line 43
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    const-string v1, "OK"

    const-string v2, "OK"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->OK:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->NO_CONTENT:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->LOADING:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->OK:Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    aput-object v1, v0, v5

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->$VALUES:[Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->defaultMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;
    .locals 1

    .line 40
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;
    .locals 1

    .line 40
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->$VALUES:[Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;

    return-object v0
.end method


# virtual methods
.method public getDefaultMessage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/callback/Search$Status;->defaultMessage:Ljava/lang/String;

    return-object v0
.end method
