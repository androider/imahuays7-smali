.class public final enum Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/messagebox/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

.field public static final enum MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

.field public static final enum MINIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    const-string v1, "MINIMUM"

    const-string v2, "Minimum"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MINIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    const-string v1, "MAXIMUM"

    const-string v2, "Maximum"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MINIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->$VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;
    .locals 1

    .line 46
    const-class v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;
    .locals 1

    .line 46
    sget-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->$VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    return-object v0
.end method
