.class public Lanet/channel/h/a$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x5

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    return v0

    :sswitch_2
    const/4 p0, 0x2

    return p0

    :sswitch_3
    const/4 p0, 0x4

    return p0

    :sswitch_4
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_4
        0x45 -> :sswitch_3
        0x49 -> :sswitch_2
        0x56 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method
