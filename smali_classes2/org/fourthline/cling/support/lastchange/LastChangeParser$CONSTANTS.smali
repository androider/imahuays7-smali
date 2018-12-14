.class public final enum Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;
.super Ljava/lang/Enum;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/lastchange/LastChangeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONSTANTS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

.field public static final enum Event:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

.field public static final enum InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

.field public static final enum val:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    const-string v1, "Event"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->Event:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    .line 64
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    const-string v1, "InstanceID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    .line 65
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    const-string v1, "val"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    const/4 v0, 0x3

    .line 62
    new-array v0, v0, [Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->Event:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->$VALUES:[Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;
    .locals 1

    .line 62
    const-class v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;
    .locals 1

    .line 62
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->$VALUES:[Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
