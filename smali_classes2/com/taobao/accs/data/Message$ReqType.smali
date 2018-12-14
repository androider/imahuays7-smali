.class public final enum Lcom/taobao/accs/data/Message$ReqType;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/accs/data/Message$ReqType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACK:Lcom/taobao/accs/data/Message$ReqType;

.field public static final enum DATA:Lcom/taobao/accs/data/Message$ReqType;

.field public static final enum REQ:Lcom/taobao/accs/data/Message$ReqType;

.field public static final enum RES:Lcom/taobao/accs/data/Message$ReqType;

.field private static final synthetic a:[Lcom/taobao/accs/data/Message$ReqType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 84
    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const-string v1, "DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const-string v1, "ACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const-string v1, "REQ"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    new-instance v0, Lcom/taobao/accs/data/Message$ReqType;

    const-string v1, "RES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/taobao/accs/data/Message$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/accs/data/Message$ReqType;

    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/accs/data/Message$ReqType;->a:[Lcom/taobao/accs/data/Message$ReqType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/taobao/accs/data/Message$ReqType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 96
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 94
    :pswitch_0
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 92
    :pswitch_1
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 90
    :pswitch_2
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    .line 88
    :pswitch_3
    sget-object p0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/data/Message$ReqType;
    .locals 1

    .line 84
    const-class v0, Lcom/taobao/accs/data/Message$ReqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/data/Message$ReqType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/accs/data/Message$ReqType;
    .locals 1

    .line 84
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->a:[Lcom/taobao/accs/data/Message$ReqType;

    invoke-virtual {v0}, [Lcom/taobao/accs/data/Message$ReqType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/data/Message$ReqType;

    return-object v0
.end method
