.class public final enum Lanet/channel/entity/EventType;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lanet/channel/entity/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lanet/channel/entity/EventType;

.field public static final enum AUTH_FAIL:Lanet/channel/entity/EventType;

.field public static final enum AUTH_SUCC:Lanet/channel/entity/EventType;

.field public static final enum CONNECTED:Lanet/channel/entity/EventType;

.field public static final enum CONNECT_FAIL:Lanet/channel/entity/EventType;

.field public static final enum DATA_RECEIVE:Lanet/channel/entity/EventType;

.field public static final enum DATA_SEND:Lanet/channel/entity/EventType;

.field public static final enum DATA_TIMEOUT:Lanet/channel/entity/EventType;

.field public static final enum DISCONNECTED:Lanet/channel/entity/EventType;

.field public static final enum HEADER_RECEIVE:Lanet/channel/entity/EventType;

.field public static final enum HEADER_SEND:Lanet/channel/entity/EventType;

.field public static final enum HORSE_RIDE:Lanet/channel/entity/EventType;

.field public static final enum PIND_RECEIVE:Lanet/channel/entity/EventType;

.field public static final enum PING_SEND:Lanet/channel/entity/EventType;

.field private static final synthetic b:[Lanet/channel/entity/EventType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 11
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    .line 12
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "DISCONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    .line 13
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "HEADER_SEND"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->HEADER_SEND:Lanet/channel/entity/EventType;

    .line 14
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "DATA_SEND"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->DATA_SEND:Lanet/channel/entity/EventType;

    .line 15
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "HEADER_RECEIVE"

    const/16 v8, 0x10

    invoke-direct {v0, v1, v5, v8}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->HEADER_RECEIVE:Lanet/channel/entity/EventType;

    .line 16
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "DATA_RECEIVE"

    const/4 v8, 0x5

    const/16 v9, 0x20

    invoke-direct {v0, v1, v8, v9}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->DATA_RECEIVE:Lanet/channel/entity/EventType;

    .line 17
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "PING_SEND"

    const/4 v9, 0x6

    const/16 v10, 0x40

    invoke-direct {v0, v1, v9, v10}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->PING_SEND:Lanet/channel/entity/EventType;

    .line 18
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "PIND_RECEIVE"

    const/4 v10, 0x7

    const/16 v11, 0x80

    invoke-direct {v0, v1, v10, v11}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->PIND_RECEIVE:Lanet/channel/entity/EventType;

    .line 19
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "CONNECT_FAIL"

    const/16 v11, 0x100

    invoke-direct {v0, v1, v7, v11}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    .line 20
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "AUTH_SUCC"

    const/16 v11, 0x9

    const/16 v12, 0x200

    invoke-direct {v0, v1, v11, v12}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    .line 21
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "AUTH_FAIL"

    const/16 v12, 0xa

    const/16 v13, 0x400

    invoke-direct {v0, v1, v12, v13}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    .line 22
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "DATA_TIMEOUT"

    const/16 v13, 0xb

    const/16 v14, 0x800

    invoke-direct {v0, v1, v13, v14}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->DATA_TIMEOUT:Lanet/channel/entity/EventType;

    .line 23
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "HORSE_RIDE"

    const/16 v14, 0xc

    const/16 v15, 0x1000

    invoke-direct {v0, v1, v14, v15}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->HORSE_RIDE:Lanet/channel/entity/EventType;

    .line 24
    new-instance v0, Lanet/channel/entity/EventType;

    const-string v1, "ALL"

    const/16 v15, 0xd

    const/16 v14, 0x1fff

    invoke-direct {v0, v1, v15, v14}, Lanet/channel/entity/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanet/channel/entity/EventType;->ALL:Lanet/channel/entity/EventType;

    const/16 v0, 0xe

    .line 10
    new-array v0, v0, [Lanet/channel/entity/EventType;

    sget-object v1, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    aput-object v1, v0, v2

    sget-object v1, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lanet/channel/entity/EventType;->HEADER_SEND:Lanet/channel/entity/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lanet/channel/entity/EventType;->DATA_SEND:Lanet/channel/entity/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lanet/channel/entity/EventType;->HEADER_RECEIVE:Lanet/channel/entity/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lanet/channel/entity/EventType;->DATA_RECEIVE:Lanet/channel/entity/EventType;

    aput-object v1, v0, v8

    sget-object v1, Lanet/channel/entity/EventType;->PING_SEND:Lanet/channel/entity/EventType;

    aput-object v1, v0, v9

    sget-object v1, Lanet/channel/entity/EventType;->PIND_RECEIVE:Lanet/channel/entity/EventType;

    aput-object v1, v0, v10

    sget-object v1, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    aput-object v1, v0, v11

    sget-object v1, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    aput-object v1, v0, v12

    sget-object v1, Lanet/channel/entity/EventType;->DATA_TIMEOUT:Lanet/channel/entity/EventType;

    aput-object v1, v0, v13

    sget-object v1, Lanet/channel/entity/EventType;->HORSE_RIDE:Lanet/channel/entity/EventType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lanet/channel/entity/EventType;->ALL:Lanet/channel/entity/EventType;

    aput-object v1, v0, v15

    sput-object v0, Lanet/channel/entity/EventType;->b:[Lanet/channel/entity/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lanet/channel/entity/EventType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/entity/EventType;
    .locals 1

    .line 10
    const-class v0, Lanet/channel/entity/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lanet/channel/entity/EventType;

    return-object p0
.end method

.method public static values()[Lanet/channel/entity/EventType;
    .locals 1

    .line 10
    sget-object v0, Lanet/channel/entity/EventType;->b:[Lanet/channel/entity/EventType;

    invoke-virtual {v0}, [Lanet/channel/entity/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/entity/EventType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 34
    iget v0, p0, Lanet/channel/entity/EventType;->a:I

    return v0
.end method
