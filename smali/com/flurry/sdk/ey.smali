.class public final Lcom/flurry/sdk/ey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ey$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ey"

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/flurry/sdk/ey$a;)V
    .locals 3

    .line 34
    invoke-static {p0}, Lcom/flurry/sdk/ey;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p3, p0}, Lcom/flurry/sdk/ey$a;->a(Landroid/content/Context;)V

    return-void

    .line 44
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p3, v0, :cond_1

    .line 45
    iget-object p3, p1, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.REFERRER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2//"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/flurry/sdk/ez;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 50
    iget-object v0, p1, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, p0, p2}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 56
    sget-object v0, Lcom/flurry/sdk/ey;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 57
    sget-object p0, Lcom/flurry/sdk/ey;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/flurry/sdk/ey;->b:Ljava/lang/Boolean;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.support.customtabs.CustomTabsClient"

    .line 62
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    sget-object v2, Lcom/flurry/sdk/ey;->a:Ljava/lang/String;

    const-string v3, "Couldn\'t find Chrome Custom Tab dependency. For better user experience include Chrome Custom Tab dependency in gradle"

    invoke-static {v2, v3}, Lcom/flurry/sdk/dc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/ey;->b:Ljava/lang/Boolean;

    .line 69
    :goto_0
    sget-object v2, Lcom/flurry/sdk/ey;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/flurry/sdk/ez;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 71
    sput-object p0, Lcom/flurry/sdk/ey;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
