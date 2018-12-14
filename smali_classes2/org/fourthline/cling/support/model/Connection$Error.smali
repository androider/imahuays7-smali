.class public final enum Lorg/fourthline/cling/support/model/Connection$Error;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/Connection$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_COMMAND_ABORTED:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_FORCED_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_IDLE_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_IP_CONFIGURATION:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_ISP_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_NONE:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_NO_CARRIER:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_UNKNOWN:Lorg/fourthline/cling/support/model/Connection$Error;

.field public static final enum ERROR_USER_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 141
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NONE:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 142
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_COMMAND_ABORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_COMMAND_ABORTED:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 143
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_NOT_ENABLED_FOR_INTERNET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 144
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_USER_DISCONNECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_USER_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 145
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_ISP_DISCONNECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_ISP_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 146
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_IDLE_DISCONNECT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_IDLE_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 147
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_FORCED_DISCONNECT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_FORCED_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 148
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_NO_CARRIER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NO_CARRIER:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 149
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_IP_CONFIGURATION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_IP_CONFIGURATION:Lorg/fourthline/cling/support/model/Connection$Error;

    .line 150
    new-instance v0, Lorg/fourthline/cling/support/model/Connection$Error;

    const-string v1, "ERROR_UNKNOWN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/fourthline/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_UNKNOWN:Lorg/fourthline/cling/support/model/Connection$Error;

    const/16 v0, 0xa

    .line 140
    new-array v0, v0, [Lorg/fourthline/cling/support/model/Connection$Error;

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NONE:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_COMMAND_ABORTED:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_USER_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_ISP_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_IDLE_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_FORCED_DISCONNECT:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_NO_CARRIER:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_IP_CONFIGURATION:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/support/model/Connection$Error;->ERROR_UNKNOWN:Lorg/fourthline/cling/support/model/Connection$Error;

    aput-object v1, v0, v11

    sput-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Connection$Error;
    .locals 1

    .line 140
    const-class v0, Lorg/fourthline/cling/support/model/Connection$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/Connection$Error;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/Connection$Error;
    .locals 1

    .line 140
    sget-object v0, Lorg/fourthline/cling/support/model/Connection$Error;->$VALUES:[Lorg/fourthline/cling/support/model/Connection$Error;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/Connection$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Connection$Error;

    return-object v0
.end method
