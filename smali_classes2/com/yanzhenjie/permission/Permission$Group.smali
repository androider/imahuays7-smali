.class public final Lcom/yanzhenjie/permission/Permission$Group;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/permission/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final CALENDAR:[Ljava/lang/String;

.field public static final CAMERA:[Ljava/lang/String;

.field public static final CONTACTS:[Ljava/lang/String;

.field public static final LOCATION:[Ljava/lang/String;

.field public static final MICROPHONE:[Ljava/lang/String;

.field public static final PHONE:[Ljava/lang/String;

.field public static final SENSORS:[Ljava/lang/String;

.field public static final SMS:[Ljava/lang/String;

.field public static final STORAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    .line 64
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.WRITE_CALENDAR"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/yanzhenjie/permission/Permission$Group;->CALENDAR:[Ljava/lang/String;

    .line 68
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    sput-object v1, Lcom/yanzhenjie/permission/Permission$Group;->CAMERA:[Ljava/lang/String;

    const/4 v1, 0x3

    .line 70
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "android.permission.READ_CONTACTS"

    aput-object v5, v2, v3

    const-string v5, "android.permission.WRITE_CONTACTS"

    aput-object v5, v2, v4

    const-string v5, "android.permission.GET_ACCOUNTS"

    aput-object v5, v2, v0

    sput-object v2, Lcom/yanzhenjie/permission/Permission$Group;->CONTACTS:[Ljava/lang/String;

    .line 75
    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v2, v3

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v2, v4

    sput-object v2, Lcom/yanzhenjie/permission/Permission$Group;->LOCATION:[Ljava/lang/String;

    .line 79
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v2, v3

    sput-object v2, Lcom/yanzhenjie/permission/Permission$Group;->MICROPHONE:[Ljava/lang/String;

    const/4 v2, 0x7

    .line 81
    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v2, v3

    const-string v5, "android.permission.CALL_PHONE"

    aput-object v5, v2, v4

    const-string v5, "android.permission.READ_CALL_LOG"

    aput-object v5, v2, v0

    const-string v5, "android.permission.WRITE_CALL_LOG"

    aput-object v5, v2, v1

    const-string v5, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/4 v6, 0x4

    aput-object v5, v2, v6

    const-string v5, "android.permission.USE_SIP"

    const/4 v7, 0x5

    aput-object v5, v2, v7

    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    const/4 v8, 0x6

    aput-object v5, v2, v8

    sput-object v2, Lcom/yanzhenjie/permission/Permission$Group;->PHONE:[Ljava/lang/String;

    .line 90
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "android.permission.BODY_SENSORS"

    aput-object v5, v2, v3

    sput-object v2, Lcom/yanzhenjie/permission/Permission$Group;->SENSORS:[Ljava/lang/String;

    .line 92
    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "android.permission.SEND_SMS"

    aput-object v5, v2, v3

    const-string v5, "android.permission.RECEIVE_SMS"

    aput-object v5, v2, v4

    const-string v5, "android.permission.READ_SMS"

    aput-object v5, v2, v0

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v5, v2, v1

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v2, v6

    sput-object v2, Lcom/yanzhenjie/permission/Permission$Group;->SMS:[Ljava/lang/String;

    .line 99
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/yanzhenjie/permission/Permission$Group;->STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
