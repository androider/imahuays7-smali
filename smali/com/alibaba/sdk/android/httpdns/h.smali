.class Lcom/alibaba/sdk/android/httpdns/h;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String; = null

.field static b:[Ljava/lang/String; = null

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static e:Ljava/lang/String; = "80"

.field static f:Ljava/lang/String; = "http://"

.field static g:I = 0x3a98


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "203.107.1.1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "203.107.1.97"

    aput-object v2, v1, v3

    const-string v2, "203.107.1.100"

    aput-object v2, v1, v0

    const-string v0, "httpdns-sc.aliyuncs.com"

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/h;->c:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/h;->d:[Ljava/lang/String;

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/h;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alibaba/sdk/android/httpdns/h;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a([Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/h;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    array-length v1, p0

    if-eqz v1, :cond_0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/h;->b:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
