.class Lcom/tencent/wxop/stat/common/p;
.super Ljava/lang/Object;


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 8

    sget v0, Lcom/tencent/wxop/stat/common/p;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/tencent/wxop/stat/common/p;->a:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "/bin"

    aput-object v4, v3, v2

    const-string v4, "/system/bin/"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "/system/xbin/"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "/system/sbin/"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "/sbin/"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "/vendor/bin/"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    sput v1, Lcom/tencent/wxop/stat/common/p;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    sput v2, Lcom/tencent/wxop/stat/common/p;->a:I

    return v2
.end method
