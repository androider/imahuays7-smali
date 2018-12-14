.class final Lcom/flurry/sdk/fb$1;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryPrivacySession$Request;

.field final synthetic b:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;Lcom/flurry/android/FlurryPrivacySession$Request;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    iput-object p2, p0, Lcom/flurry/sdk/fb$1;->a:Lcom/flurry/android/FlurryPrivacySession$Request;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/fb$1;->a:Lcom/flurry/android/FlurryPrivacySession$Request;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->b(Lcom/flurry/android/FlurryPrivacySession$Request;)Ljava/util/Map;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/flurry/sdk/dj;

    invoke-direct {v1}, Lcom/flurry/sdk/dj;-><init>()V

    const-string v2, "https://api.login.yahoo.com/oauth2/device_session"

    .line 1077
    iput-object v2, v1, Lcom/flurry/sdk/dl;->g:Ljava/lang/String;

    .line 54
    sget-object v2, Lcom/flurry/sdk/dl$a;->c:Lcom/flurry/sdk/dl$a;

    .line 1085
    iput-object v2, v1, Lcom/flurry/sdk/dl;->h:Lcom/flurry/sdk/dl$a;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2023
    iput-object v0, v1, Lcom/flurry/sdk/dj;->b:Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/flurry/sdk/dy;

    invoke-direct {v0}, Lcom/flurry/sdk/dy;-><init>()V

    .line 2031
    iput-object v0, v1, Lcom/flurry/sdk/dj;->d:Lcom/flurry/sdk/dx;

    .line 58
    new-instance v0, Lcom/flurry/sdk/dy;

    invoke-direct {v0}, Lcom/flurry/sdk/dy;-><init>()V

    .line 3027
    iput-object v0, v1, Lcom/flurry/sdk/dj;->c:Lcom/flurry/sdk/dx;

    .line 59
    new-instance v0, Lcom/flurry/sdk/fb$1$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/fb$1$1;-><init>(Lcom/flurry/sdk/fb$1;)V

    .line 3035
    iput-object v0, v1, Lcom/flurry/sdk/dj;->a:Lcom/flurry/sdk/dj$a;

    .line 83
    invoke-static {}, Lcom/flurry/sdk/ch;->a()Lcom/flurry/sdk/ch;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/ch;->a(Ljava/lang/Object;Lcom/flurry/sdk/er;)V

    return-void
.end method
