.class public final enum Lcom/yanzhenjie/andserver/RequestMethod;
.super Ljava/lang/Enum;
.source "RequestMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/andserver/RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/yanzhenjie/andserver/RequestMethod;

.field public static final enum GET:Lcom/yanzhenjie/andserver/RequestMethod;

.field public static final enum HEAD:Lcom/yanzhenjie/andserver/RequestMethod;

.field public static final enum OPTIONS:Lcom/yanzhenjie/andserver/RequestMethod;

.field public static final enum PATCH:Lcom/yanzhenjie/andserver/RequestMethod;

.field public static final enum POST:Lcom/yanzhenjie/andserver/RequestMethod;

.field public static final enum PUT:Lcom/yanzhenjie/andserver/RequestMethod;

.field public static final enum TRACE:Lcom/yanzhenjie/andserver/RequestMethod;

.field private static final synthetic b:[Lcom/yanzhenjie/andserver/RequestMethod;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 27
    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->GET:Lcom/yanzhenjie/andserver/RequestMethod;

    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->HEAD:Lcom/yanzhenjie/andserver/RequestMethod;

    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->POST:Lcom/yanzhenjie/andserver/RequestMethod;

    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "PUT"

    const-string v2, "PUT"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->PUT:Lcom/yanzhenjie/andserver/RequestMethod;

    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "PATCH"

    const-string v2, "PATCH"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->PATCH:Lcom/yanzhenjie/andserver/RequestMethod;

    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->DELETE:Lcom/yanzhenjie/andserver/RequestMethod;

    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "OPTIONS"

    const-string v2, "OPTIONS"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->OPTIONS:Lcom/yanzhenjie/andserver/RequestMethod;

    new-instance v0, Lcom/yanzhenjie/andserver/RequestMethod;

    const-string v1, "TRACE"

    const-string v2, "TRACE"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/yanzhenjie/andserver/RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->TRACE:Lcom/yanzhenjie/andserver/RequestMethod;

    const/16 v0, 0x8

    .line 25
    new-array v0, v0, [Lcom/yanzhenjie/andserver/RequestMethod;

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->GET:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->HEAD:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->POST:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->PUT:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->PATCH:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->DELETE:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->OPTIONS:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yanzhenjie/andserver/RequestMethod;->TRACE:Lcom/yanzhenjie/andserver/RequestMethod;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->b:[Lcom/yanzhenjie/andserver/RequestMethod;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/yanzhenjie/andserver/RequestMethod;->a:Ljava/lang/String;

    return-void
.end method

.method public static reverse(Ljava/lang/String;)Lcom/yanzhenjie/andserver/RequestMethod;
    .locals 2

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->GET:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 57
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DELETE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "TRACE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "PATCH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "HEAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "PUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_7
    const-string v1, "OPTIONS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x6

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 84
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->GET:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 81
    :pswitch_0
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->TRACE:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 78
    :pswitch_1
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->OPTIONS:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 75
    :pswitch_2
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->DELETE:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 72
    :pswitch_3
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->PATCH:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 69
    :pswitch_4
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->PUT:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 66
    :pswitch_5
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->POST:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 63
    :pswitch_6
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->HEAD:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    .line 60
    :pswitch_7
    sget-object p0, Lcom/yanzhenjie/andserver/RequestMethod;->GET:Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_7
        0x11336 -> :sswitch_6
        0x136ef -> :sswitch_5
        0x21c5e0 -> :sswitch_4
        0x2590a0 -> :sswitch_3
        0x4862828 -> :sswitch_2
        0x4c5f925 -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/andserver/RequestMethod;
    .locals 1

    .line 25
    const-class v0, Lcom/yanzhenjie/andserver/RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/andserver/RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/andserver/RequestMethod;
    .locals 1

    .line 25
    sget-object v0, Lcom/yanzhenjie/andserver/RequestMethod;->b:[Lcom/yanzhenjie/andserver/RequestMethod;

    invoke-virtual {v0}, [Lcom/yanzhenjie/andserver/RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/andserver/RequestMethod;

    return-object v0
.end method


# virtual methods
.method public allowRequestBody()Z
    .locals 2

    .line 43
    sget-object v0, Lcom/yanzhenjie/andserver/RequestMethod$1;->a:[I

    invoke-virtual {p0}, Lcom/yanzhenjie/andserver/RequestMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/yanzhenjie/andserver/RequestMethod;->a:Ljava/lang/String;

    return-object v0
.end method
