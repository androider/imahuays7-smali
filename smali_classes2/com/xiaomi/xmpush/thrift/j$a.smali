.class public final enum Lcom/xiaomi/xmpush/thrift/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/xmpush/thrift/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/xmpush/thrift/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum b:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum c:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum d:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum e:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum f:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum g:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum h:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum i:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum j:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum k:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum l:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum m:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum n:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum o:Lcom/xiaomi/xmpush/thrift/j$a;

.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/xmpush/thrift/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic s:[Lcom/xiaomi/xmpush/thrift/j$a;


# instance fields
.field private final q:S

.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "DEBUG"

    const-string v2, "debug"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->a:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "TARGET"

    const-string v2, "target"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->b:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "ID"

    const-string v2, "id"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->c:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "APP_ID"

    const-string v2, "appId"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->d:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "APP_VERSION"

    const-string v2, "appVersion"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->e:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "PACKAGE_NAME"

    const-string v2, "packageName"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->f:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "TOKEN"

    const-string v2, "token"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->g:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "DEVICE_ID"

    const-string v2, "deviceId"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->h:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "ALIAS_NAME"

    const-string v2, "aliasName"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->i:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "REG_ID"

    const-string v2, "regId"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->j:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "PUSH_SDK_VERSION_NAME"

    const-string v2, "pushSdkVersionName"

    const/16 v14, 0xa

    const/16 v15, 0xc

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->k:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "PUSH_SDK_VERSION_CODE"

    const-string v2, "pushSdkVersionCode"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->l:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "CONNECTION_ATTRS"

    const-string v2, "connectionAttrs"

    const/16 v13, 0x64

    invoke-direct {v0, v1, v15, v13, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->m:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "CLEAN_OLD_REG_INFO"

    const-string v2, "cleanOldRegInfo"

    const/16 v13, 0x65

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->n:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "OLD_REG_ID"

    const-string v2, "oldRegId"

    const/16 v13, 0xe

    const/16 v14, 0x66

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->o:Lcom/xiaomi/xmpush/thrift/j$a;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/xiaomi/xmpush/thrift/j$a;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->a:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->b:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->c:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->d:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->e:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->f:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->g:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->h:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->i:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->j:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->k:Lcom/xiaomi/xmpush/thrift/j$a;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->l:Lcom/xiaomi/xmpush/thrift/j$a;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->m:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v15

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->n:Lcom/xiaomi/xmpush/thrift/j$a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->o:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v13

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->s:[Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->p:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/xmpush/thrift/j$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/xmpush/thrift/j$a;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/j$a;->p:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/j$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/j$a;->q:S

    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/j$a;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j$a;
    .locals 1

    const-class v0, Lcom/xiaomi/xmpush/thrift/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/xmpush/thrift/j$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/j$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->s:[Lcom/xiaomi/xmpush/thrift/j$a;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/j$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/j$a;->r:Ljava/lang/String;

    return-object v0
.end method
