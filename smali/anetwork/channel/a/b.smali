.class public Lanetwork/channel/a/b;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Z = true

.field private static volatile b:Z = true

.field private static volatile c:Z = true

.field private static volatile d:Z = true

.field private static volatile e:Z = true

.field private static volatile f:Z = false

.field private static volatile g:J

.field private static volatile h:Lanetwork/channel/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 4

    .line 29
    new-instance v0, Lanetwork/channel/a/c;

    invoke-direct {v0}, Lanetwork/channel/a/c;-><init>()V

    sput-object v0, Lanetwork/channel/a/b;->h:Lanetwork/channel/a/a;

    .line 30
    sget-object v0, Lanetwork/channel/a/b;->h:Lanetwork/channel/a/a;

    invoke-interface {v0}, Lanetwork/channel/a/a;->a()V

    .line 32
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Cache.Flag"

    const-wide/16 v2, 0x0

    .line 33
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lanetwork/channel/a/b;->g:J

    return-void
.end method
