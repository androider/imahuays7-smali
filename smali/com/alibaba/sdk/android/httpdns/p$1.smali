.class Lcom/alibaba/sdk/android/httpdns/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/p;->a()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/p;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/p$1;->a:Lcom/alibaba/sdk/android/httpdns/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const-string p1, "Https request, set hostnameVerifier"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j;->a(Ljava/lang/String;)V

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    const-string v0, "203.107.1.1"

    invoke-interface {p1, v0, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
