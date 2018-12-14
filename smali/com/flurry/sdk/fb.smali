.class public Lcom/flurry/sdk/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "fb"

.field private static b:Lcom/flurry/sdk/fb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/flurry/sdk/fb;

    invoke-direct {v0}, Lcom/flurry/sdk/fb;-><init>()V

    sput-object v0, Lcom/flurry/sdk/fb;->b:Lcom/flurry/sdk/fb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/flurry/sdk/fb;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/flurry/android/FlurryPrivacySession$a;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/flurry/sdk/fb;->b(Landroid/content/Context;Lcom/flurry/android/FlurryPrivacySession$a;)V

    return-void
.end method

.method public static a(Lcom/flurry/android/FlurryPrivacySession$Request;)V
    .locals 3

    .line 1040
    sget-object v0, Lcom/flurry/sdk/fb;->b:Lcom/flurry/sdk/fb;

    .line 1048
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/fb$1;

    invoke-direct {v2, v0, p0}, Lcom/flurry/sdk/fb$1;-><init>(Lcom/flurry/sdk/fb;Lcom/flurry/android/FlurryPrivacySession$Request;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fb;Lcom/flurry/android/FlurryPrivacySession$a;)V
    .locals 4

    .line 4105
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 5103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 4106
    invoke-static {v0}, Lcom/flurry/sdk/ey;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4107
    new-instance v1, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>()V

    const/4 v2, 0x1

    .line 4108
    invoke-virtual {v1, v2}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroid/support/customtabs/CustomTabsIntent$Builder;

    move-result-object v1

    .line 4109
    invoke-virtual {v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 4111
    iget-object v2, p1, Lcom/flurry/android/FlurryPrivacySession$a;->a:Landroid/net/Uri;

    .line 4112
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/fb$2;

    invoke-direct {v3, p0, p1}, Lcom/flurry/sdk/fb$2;-><init>(Lcom/flurry/sdk/fb;Lcom/flurry/android/FlurryPrivacySession$a;)V

    .line 4111
    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/ey;->a(Landroid/content/Context;Landroid/support/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/flurry/sdk/ey$a;)V

    return-void

    .line 4121
    :cond_0
    invoke-static {v0, p1}, Lcom/flurry/sdk/fb;->b(Landroid/content/Context;Lcom/flurry/android/FlurryPrivacySession$a;)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/android/FlurryPrivacySession$Request;)Ljava/util/Map;
    .locals 4

    .line 1089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_verifier"

    .line 1090
    iget-object v2, p0, Lcom/flurry/android/FlurryPrivacySession$Request;->verifier:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2023
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/bt;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "gpaid"

    .line 2025
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v2

    .line 2165
    iget-object v2, v2, Lcom/flurry/sdk/bt;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "andid"

    .line 2031
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3038
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3041
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/bt;->e()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3043
    invoke-static {v2}, Lcom/flurry/sdk/en;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flurry_guid"

    .line 3044
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v2

    .line 3075
    iget-object v2, v2, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    const-string v3, "flurry_project_api_key"

    .line 3049
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1099
    iget-object p0, p0, Lcom/flurry/android/FlurryPrivacySession$Request;->context:Landroid/content/Context;

    .line 4055
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "src"

    const-string v3, "flurryandroidsdk"

    .line 4057
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "srcv"

    const-string v3, "11.1.0"

    .line 4058
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appsrc"

    .line 4059
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appsrcv"

    .line 4060
    invoke-static {}, Lcom/flurry/sdk/cc;->a()Lcom/flurry/sdk/cc;

    invoke-static {p0}, Lcom/flurry/sdk/cc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/flurry/android/FlurryPrivacySession$a;)V
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object p1, p1, Lcom/flurry/android/FlurryPrivacySession$a;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
