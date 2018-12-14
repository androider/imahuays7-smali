.class public Lcom/flurry/sdk/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/bo$c;,
        Lcom/flurry/sdk/bo$b;,
        Lcom/flurry/sdk/bo$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "bo"

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bo$b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/android/vending/billing/IInAppBillingService;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/flurry/sdk/bo;->b:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flurry/sdk/bo;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .line 25
    sput-object p0, Lcom/flurry/sdk/bo;->d:Lcom/android/vending/billing/IInAppBillingService;

    return-object p0
.end method

.method static synthetic a(Lcom/android/vending/billing/IInAppBillingService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/bo$c;
    .locals 0

    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/flurry/sdk/bo;->b(Lcom/android/vending/billing/IInAppBillingService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/bo$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcom/flurry/sdk/bo;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/bo$a;)V
    .locals 4

    :try_start_0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 45
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x3

    .line 46
    sget-object v1, Lcom/flurry/sdk/bo;->a:Ljava/lang/String;

    const-string v2, "Google play billing library is available"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    new-instance v0, Lcom/flurry/sdk/bo$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/bo$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/bo$a;)V

    const/4 p1, 0x0

    .line 1069
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1070
    sget-object v1, Lcom/flurry/sdk/bo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_1
    sget-object v2, Lcom/flurry/sdk/bo;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1072
    new-instance p2, Lcom/flurry/sdk/bo$2;

    invoke-direct {p2}, Lcom/flurry/sdk/bo$2;-><init>()V

    sput-object p2, Lcom/flurry/sdk/bo;->e:Landroid/content/ServiceConnection;

    .line 1100
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1104
    :cond_0
    sget-object v2, Lcom/flurry/sdk/bo;->d:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v2, :cond_1

    .line 1105
    sget-object v2, Lcom/flurry/sdk/bo;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1107
    :cond_1
    sget-object v2, Lcom/flurry/sdk/bo;->d:Lcom/android/vending/billing/IInAppBillingService;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/sdk/bo$b;->b(ILcom/android/vending/billing/IInAppBillingService;)V

    .line 1111
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1112
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    .line 1114
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1119
    sget-object p1, Lcom/flurry/sdk/bo;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p2, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 1123
    invoke-virtual {v0, v3, p0}, Lcom/flurry/sdk/bo$b;->b(ILcom/android/vending/billing/IInAppBillingService;)V

    .line 1124
    sput-object p0, Lcom/flurry/sdk/bo;->e:Landroid/content/ServiceConnection;

    .line 1127
    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    .line 48
    sget-object p1, Lcom/flurry/sdk/bo;->a:Ljava/lang/String;

    const-string p2, "Could not find google play billing library"

    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Lcom/android/vending/billing/IInAppBillingService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/bo$c;
    .locals 2

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "ITEM_ID_LIST"

    .line 135
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p3, 0x3

    const/4 v1, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "DETAILS_LIST"

    .line 140
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DETAILS_LIST"

    .line 142
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 144
    new-instance p1, Lcom/flurry/sdk/bo$c;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/flurry/sdk/bo$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 152
    sget-object p1, Lcom/flurry/sdk/bo;->a:Ljava/lang/String;

    const-string p2, "JSONException parsing SKU Details"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception p0

    .line 149
    sget-object p1, Lcom/flurry/sdk/bo;->a:Ljava/lang/String;

    const-string p2, "RemoteException getting SKU Details"

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .line 25
    sget-object v0, Lcom/flurry/sdk/bo;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    .line 25
    sget-object v0, Lcom/flurry/sdk/bo;->d:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method static synthetic d()Landroid/content/ServiceConnection;
    .locals 1

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/flurry/sdk/bo;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method
