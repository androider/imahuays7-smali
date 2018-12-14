.class public Lcom/umeng/commonsdk/framework/b;
.super Ljava/lang/Object;
.source "UMModuleRegister.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/framework/UMLogDataProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 103
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;
    .locals 1

    .line 95
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const-string v0, "analytics"

    const/16 v1, 0x4001

    if-lt p0, v1, :cond_0

    const/16 v1, 0x5000

    if-gt p0, v1, :cond_0

    const-string v0, "push"

    :cond_0
    const/16 v1, 0x6001

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7000

    if-gt p0, v1, :cond_1

    const-string v0, "share"

    :cond_1
    const v1, 0x8001

    if-lt p0, v1, :cond_2

    const v1, 0x9000

    if-gt p0, v1, :cond_2

    const-string v0, "internal"

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/framework/b;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z
    .locals 3

    .line 67
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/b;->a:Ljava/util/HashMap;

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 71
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 75
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/umeng/commonsdk/framework/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/umeng/commonsdk/framework/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
