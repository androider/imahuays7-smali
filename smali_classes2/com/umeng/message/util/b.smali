.class public Lcom/umeng/message/util/b;
.super Ljava/lang/Object;
.source "HttpDnsManager.java"


# static fields
.field private static final a:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "174658"

    .line 19
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/httpdns/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/c;

    move-result-object p0

    const/4 v0, 0x1

    .line 20
    invoke-interface {p0, v0}, Lcom/alibaba/sdk/android/httpdns/c;->a(Z)V

    return-void
.end method
