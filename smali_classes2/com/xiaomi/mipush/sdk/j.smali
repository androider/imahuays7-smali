.class public Lcom/xiaomi/mipush/sdk/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mipush/sdk/j;

.field private static c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/j;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    const-string v1, "notify_effect"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "notify_effect"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cause: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    sget-object v2, Lcom/xiaomi/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "intent_uri"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "intent_uri"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_7

    const/4 v1, 0x1

    :try_start_1
    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    const-string v1, "class_name"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "class_name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_3
    const-string p1, "intent_flag"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "intent_flag"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cause by intent_flag: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object p2, v2

    goto/16 :goto_5

    :cond_4
    sget-object p1, Lcom/xiaomi/b/a/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "web_uri"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :try_start_4
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v1, "http"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "https"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    move-object p2, v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object p2, v0

    :goto_5
    if-eqz p2, :cond_8

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x10000

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz p0, :cond_8

    return-object p2

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cause: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/h;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/h;)Lorg/apache/thrift/a;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "receiving an un-recognized message. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive a message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/d; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processing a message, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/mipush/sdk/j$1;->a:[I

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const-wide/16 v3, 0x0

    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    check-cast v1, Lcom/xiaomi/xmpush/thrift/i;

    const-string p1, "registration id expired"

    iget-object p2, v1, Lcom/xiaomi/xmpush/thrift/i;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const-string p1, "client_info_update_ok"

    iget-object p2, v1, Lcom/xiaomi/xmpush/thrift/i;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/i;->h()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/i;->h()Ljava/util/Map;

    move-result-object p1

    const-string p2, "app_version"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/i;->h()Ljava/util/Map;

    move-result-object p1

    const-string p2, "app_version"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    check-cast v1, Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->k()Ljava/util/List;

    move-result-object p1

    iget-wide p2, v1, Lcom/xiaomi/xmpush/thrift/g;->g:J

    cmp-long v0, p2, v3

    if-nez v0, :cond_7

    const-string p2, "accept-time"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "00:00"

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "00:00"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/xiaomi/mipush/sdk/e;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/xiaomi/mipush/sdk/e;->a(Z)V

    :goto_0
    const-string p2, "GMT+08"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/xiaomi/mipush/sdk/j;->a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_1

    :cond_3
    const-string p2, "set-alias"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p2, "unset-alias"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p2, "set-account"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p2, "unset-account"

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_1
    move-object v6, p1

    iget-wide v7, v1, Lcom/xiaomi/xmpush/thrift/g;->g:J

    iget-object v9, v1, Lcom/xiaomi/xmpush/thrift/g;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->m()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast v1, Lcom/xiaomi/xmpush/thrift/t;

    iget-wide p1, v1, Lcom/xiaomi/xmpush/thrift/t;->f:J

    cmp-long p3, p1, v3

    if-nez p3, :cond_8

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/t;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->f(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/t;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/t;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v3, v0

    const-string v2, "unsubscibe-topic"

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/t;->f:J

    iget-object v6, v1, Lcom/xiaomi/xmpush/thrift/t;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/t;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast v1, Lcom/xiaomi/xmpush/thrift/p;

    iget-wide p1, v1, Lcom/xiaomi/xmpush/thrift/p;->f:J

    cmp-long p3, p1, v3

    if-nez p3, :cond_a

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/p;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/p;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/p;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v3, v0

    const-string v2, "subscribe-topic"

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/p;->f:J

    iget-object v6, v1, Lcom/xiaomi/xmpush/thrift/p;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/p;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast v1, Lcom/xiaomi/xmpush/thrift/r;

    iget-wide p1, v1, Lcom/xiaomi/xmpush/thrift/r;->f:J

    cmp-long p3, p1, v3

    if-nez p3, :cond_c

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/e;->h()V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;)V

    :cond_c
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    return-object v0

    :pswitch_5
    check-cast v1, Lcom/xiaomi/xmpush/thrift/k;

    iget-wide p1, v1, Lcom/xiaomi/xmpush/thrift/k;->f:J

    cmp-long p3, p1, v3

    if-nez p3, :cond_d

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p1

    iget-object p2, v1, Lcom/xiaomi/xmpush/thrift/k;->h:Ljava/lang/String;

    iget-object p3, v1, Lcom/xiaomi/xmpush/thrift/k;->i:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/xiaomi/mipush/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p1, v1, Lcom/xiaomi/xmpush/thrift/k;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, v1, Lcom/xiaomi/xmpush/thrift/k;->h:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object v3, v0

    const-string v2, "register"

    iget-wide v4, v1, Lcom/xiaomi/xmpush/thrift/k;->f:J

    iget-object v6, v1, Lcom/xiaomi/xmpush/thrift/k;->g:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/mipush/sdk/b;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/k;->d()V

    return-object p1

    :pswitch_6
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->l()Z

    move-result v2

    if-eqz v2, :cond_f

    if-nez p2, :cond_f

    const-string p1, "receive a message in pause state. drop it"

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-object v0

    :cond_f
    check-cast v1, Lcom/xiaomi/xmpush/thrift/n;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/n;->l()Lcom/xiaomi/xmpush/thrift/b;

    move-result-object v2

    if-nez v2, :cond_10

    const-string p1, "receive an empty message without push content, drop it"

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object v0

    :cond_10
    if-eqz p2, :cond_12

    invoke-static {p1}, Lcom/xiaomi/b/a/b;->b(Lcom/xiaomi/xmpush/thrift/h;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v7

    iget-object v8, p1, Lcom/xiaomi/xmpush/thrift/h;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v7

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;)V

    :cond_12
    :goto_2
    if-nez p2, :cond_14

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/n;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/n;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_13

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/n;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/n;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/n;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_14

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/n;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_14
    :goto_3
    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/h;->h:Lcom/xiaomi/xmpush/thrift/c;

    if-eqz v3, :cond_15

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/h;->h:Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/c;->r()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/h;->h:Lcom/xiaomi/xmpush/thrift/c;

    iget-object v3, v3, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    const-string v4, "jobkey"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_4

    :cond_15
    move-object v3, v0

    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->b()Ljava/lang/String;

    move-result-object v3

    :cond_16
    if-nez p2, :cond_17

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop a duplicate message, key="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v4

    invoke-static {v1, v4, p2}, Lcom/xiaomi/mipush/sdk/b;->a(Lcom/xiaomi/xmpush/thrift/n;Lcom/xiaomi/xmpush/thrift/c;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v5

    if-nez v5, :cond_18

    if-nez p2, :cond_18

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/b/a/b;->a(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p2, p1, p3}, Lcom/xiaomi/b/a/b;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/h;[B)V

    return-object v0

    :cond_18
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive a message, msgid="

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", jobkey="

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_1d

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object p3

    if-eqz p3, :cond_1d

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object p3

    const-string v3, "notify_effect"

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object p2

    const-string p3, "notify_effect"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/b/a/b;->b(Lcom/xiaomi/xmpush/thrift/h;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object p3, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/xiaomi/xmpush/thrift/h;->f:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_19

    const-string p1, "Getting Intent fail from ignore reg message. "

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-object v0

    :cond_19
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1a

    const-string p3, "payload"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1a
    :goto_5
    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0

    :cond_1b
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1c

    sget-object p2, Lcom/xiaomi/b/a/c;->c:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    const-string p2, "key_message"

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_5

    :cond_1c
    return-object v0

    :cond_1d
    move-object v0, v4

    :goto_6
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object p3

    if-nez p3, :cond_1e

    if-nez p2, :cond_1e

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/xiaomi/mipush/sdk/j;->a(Lcom/xiaomi/xmpush/thrift/n;Lcom/xiaomi/xmpush/thrift/c;)V

    :cond_1e
    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const-string p1, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/h;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 4

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/h;)Lorg/apache/thrift/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message arrived: receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receive a message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/d; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message arrived: processing an arrived message, action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/j$1;->a:[I

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-object p2

    :cond_1
    check-cast v0, Lcom/xiaomi/xmpush/thrift/n;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/n;->l()Lcom/xiaomi/xmpush/thrift/b;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "message arrived: receive an empty message without push content, drop it"

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object p2

    :cond_2
    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/h;->h:Lcom/xiaomi/xmpush/thrift/c;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/xiaomi/xmpush/thrift/h;->h:Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/c;->r()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object p2, p1, Lcom/xiaomi/xmpush/thrift/h;->h:Lcom/xiaomi/xmpush/thrift/c;

    iget-object p2, p2, Lcom/xiaomi/xmpush/thrift/c;->j:Ljava/util/Map;

    const-string v3, "jobkey"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/xiaomi/mipush/sdk/b;->a(Lcom/xiaomi/xmpush/thrift/n;Lcom/xiaomi/xmpush/thrift/c;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->setArrivedMessage(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message arrived: receive a message, msgid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jobkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    const-string p1, "message arrived: receive a message which action string is not valid. is the reg expired?"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Lcom/xiaomi/mipush/sdk/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/j;->a:Lcom/xiaomi/mipush/sdk/j;

    :cond_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/j;->a:Lcom/xiaomi/mipush/sdk/j;

    return-object p0
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/h;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/e;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/c;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/e;->a(J)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->f:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/xiaomi/mipush/sdk/k;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/c;)V

    return-void
.end method

.method private a(Lcom/xiaomi/xmpush/thrift/n;Lcom/xiaomi/xmpush/thrift/c;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/n;->l()Lcom/xiaomi/xmpush/thrift/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/xmpush/thrift/e;->a(J)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/n;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/n;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/n;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/n;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/e;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/k;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/k;

    move-result-object p1

    sget-object v1, Lcom/xiaomi/xmpush/thrift/a;->f:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p1, v0, v1, p2}, Lcom/xiaomi/mipush/sdk/k;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/c;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lcom/xiaomi/mipush/sdk/j;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/e;->j()Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v1, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "pref_msg_ids"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    sget-object v6, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v1, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v1, 0x19

    if-le p1, v1, :cond_2

    sget-object p1, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/xiaomi/mipush/sdk/j;->c:Ljava/util/Queue;

    const-string v1, ","

    invoke-static {p1, v1}, Lcom/xiaomi/a/a/e/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pref_msg_ids"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;
    .locals 10

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive an intent from server, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    const-string v1, "mrt"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "mipush_notified"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez v0, :cond_1

    const-string p1, "receiving an empty message, drop"

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance v2, Lcom/xiaomi/xmpush/thrift/h;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/h;-><init>()V

    :try_start_0
    invoke-static {v2, v0}, Lcom/xiaomi/xmpush/thrift/u;->a(Lorg/apache/thrift/a;[B)V

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/xmpush/thrift/a;->e:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v7, v8, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/e;->l()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez p1, :cond_3

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v7

    const-string v8, "mrt"

    invoke-virtual {v7, v8, v1}, Lcom/xiaomi/xmpush/thrift/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v1

    const-string v7, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/xiaomi/xmpush/thrift/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/j;->a(Lcom/xiaomi/xmpush/thrift/h;)V

    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    sget-object v7, Lcom/xiaomi/xmpush/thrift/a;->e:Lcom/xiaomi/xmpush/thrift/a;

    if-ne v1, v7, :cond_7

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->c()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v2}, Lcom/xiaomi/b/a/b;->b(Lcom/xiaomi/xmpush/thrift/h;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-nez v1, :cond_5

    const-string p1, "drop an un-encrypted messages. %1$s, %2$s"

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/c;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    :goto_1
    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-object v3

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/c;->r()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/c;->r()Ljava/util/Map;

    move-result-object v1

    const-string v9, "notify_effect"

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "drop an un-encrypted messages. %1$s, %2$s"

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {v6}, Lcom/xiaomi/xmpush/thrift/c;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-object v3

    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v2, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/a;

    sget-object v4, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    if-eq v1, v4, :cond_9

    invoke-static {v2}, Lcom/xiaomi/b/a/b;->b(Lcom/xiaomi/xmpush/thrift/h;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v2, p1, v0}, Lcom/xiaomi/mipush/sdk/j;->a(Lcom/xiaomi/xmpush/thrift/h;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "receive message without registration. need unregister or re-register!"

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object v3

    :cond_9
    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/e;->n()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, v2, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/a;

    sget-object v0, Lcom/xiaomi/xmpush/thrift/a;->b:Lcom/xiaomi/xmpush/thrift/a;

    if-ne p1, v0, :cond_a

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/e;->h()V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    return-object v3

    :cond_a
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->e(Landroid/content/Context;)V

    return-object v3

    :cond_b
    invoke-direct {p0, v2, p1, v0}, Lcom/xiaomi/mipush/sdk/j;->a(Lcom/xiaomi/xmpush/thrift/h;Z[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/thrift/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    :cond_c
    const-string v1, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;-><init>()V

    new-instance v1, Lcom/xiaomi/xmpush/thrift/h;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/h;-><init>()V

    :try_start_1
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v1, v2}, Lcom/xiaomi/xmpush/thrift/u;->a(Lorg/apache/thrift/a;[B)V
    :try_end_1
    .catch Lorg/apache/thrift/d; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_d
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/h;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setCommand(Ljava/lang/String;)V

    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setResultCode(J)V

    const-string v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->setReason(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive a error message. code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mipush_error_code"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mipush_error_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object v0

    :cond_e
    const-string v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "message arrived: receiving an empty message, drop"

    goto/16 :goto_0

    :cond_f
    new-instance v0, Lcom/xiaomi/xmpush/thrift/h;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/h;-><init>()V

    :try_start_2
    invoke-static {v0, p1}, Lcom/xiaomi/xmpush/thrift/u;->a(Lorg/apache/thrift/a;[B)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaomi/b/a/b;->b(Lcom/xiaomi/xmpush/thrift/h;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string p1, "message arrived: receive ignore reg message, ignore!"

    :goto_3
    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    return-object v3

    :cond_10
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v2

    if-nez v2, :cond_11

    const-string p1, "message arrived: receive message without registration. need unregister or re-register!"

    goto :goto_3

    :cond_11
    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->n()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p1, "message arrived: app info is invalidated"

    goto :goto_3

    :cond_12
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/j;->a(Lcom/xiaomi/xmpush/thrift/h;[B)Lcom/xiaomi/mipush/sdk/PushMessageHandler$a;

    move-result-object p1
    :try_end_2
    .catch Lorg/apache/thrift/d; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    :cond_13
    return-object v3
.end method

.method public a(Ljava/util/TimeZone;Ljava/util/TimeZone;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/util/TimeZone;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x5a0

    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v12, ":"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3c

    mul-long v6, v6, v16

    add-long v18, v6, v10

    sub-long v6, v18, v3

    add-long v10, v6, v1

    rem-long/2addr v10, v1

    mul-long v12, v12, v16

    add-long v6, v12, v14

    sub-long v12, v6, v3

    add-long v3, v12, v1

    rem-long/2addr v3, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "%1$02d:%2$02d"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    div-long v7, v10, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    rem-long v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "%1$02d:%2$02d"

    new-array v2, v2, [Ljava/lang/Object;

    div-long v6, v3, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    rem-long v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
