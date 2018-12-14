.class public Lcom/huawei/android/pushselfshow/richpush/html/api/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "OK."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Failed to start compass."

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Can\'t find method."

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Service not found."

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Class not found."

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Illegal access."

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Instantiation error."

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Malformed url."

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "IO error."

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Invalid action."

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Illegal parameter."

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Subject to play the file is not found."

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Supports only HTTP / HTTPS or local file."

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Play abnormal, please try again."

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Application does not exist."

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Application does not exist, thus opening the application market."

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Application market does not exist."

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "NetWork provider is not available."

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "GPS provider is not available."

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "NetWork Provider is out of service."

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "GPS Provider is out of service."

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Location API is not available for this device."

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "No sensors found to register accelerometer listening to."

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Accelerometer could not be started."

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Not found Sd card."

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Error"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->c:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->b:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a(Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->c:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->c:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a(Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->c:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/android/pushselfshow/richpush/html/api/d$a;->ordinal()I

    move-result p1

    const-string v0, "result_code"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "result_info"

    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "PushSelfShowLog"

    const-string v0, "pluginRecsult encodeMsg error "

    invoke-static {p2, v0, p1}, Lcom/huawei/android/a/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()[Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a:[Ljava/lang/String;

    sget-object v2, Lcom/huawei/android/pushselfshow/richpush/html/api/d;->a:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
