.class public Lanet/channel/h/j;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/h/j$b;,
        Lanet/channel/h/j$a;
    }
.end annotation


# static fields
.field static a:Ljavax/net/ssl/SSLSocketFactory;

.field static b:Ljavax/net/ssl/HostnameVerifier;

.field public static final c:Ljavax/net/ssl/HostnameVerifier;

.field public static final d:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lanet/channel/h/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/h/j$a;-><init>(Lanet/channel/h/j$1;)V

    sput-object v0, Lanet/channel/h/j;->c:Ljavax/net/ssl/HostnameVerifier;

    .line 16
    invoke-static {}, Lanet/channel/h/j$b;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lanet/channel/h/j;->d:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public static a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 19
    sget-object v0, Lanet/channel/h/j;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static b()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 27
    sget-object v0, Lanet/channel/h/j;->b:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method
