.class public Lcom/taobao/accs/data/Message$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "INVALID"

    return-object p0

    :pswitch_0
    const-string p0, "HANDSHAKE"

    return-object p0

    :pswitch_1
    const-string p0, "PING"

    return-object p0

    :pswitch_2
    const-string p0, "DATA"

    return-object p0

    :pswitch_3
    const-string p0, "CONTROL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
