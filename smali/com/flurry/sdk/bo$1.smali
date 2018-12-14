.class final Lcom/flurry/sdk/bo$1;
.super Lcom/flurry/sdk/bo$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bo;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/bo$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/bo$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/bo$a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/flurry/sdk/bo$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/flurry/sdk/bo$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/bo$1;->c:Lcom/flurry/sdk/bo$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/bo$b;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/vending/billing/IInAppBillingService;)V
    .locals 3

    if-nez p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/bo$1;->a:Landroid/content/Context;

    const-string v1, "inapp"

    iget-object v2, p0, Lcom/flurry/sdk/bo$1;->b:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2}, Lcom/flurry/sdk/bo;->a(Lcom/android/vending/billing/IInAppBillingService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/bo$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/bo$1;->a:Landroid/content/Context;

    const-string v1, "subs"

    iget-object v2, p0, Lcom/flurry/sdk/bo$1;->b:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2}, Lcom/flurry/sdk/bo;->a(Lcom/android/vending/billing/IInAppBillingService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/bo$c;

    move-result-object v0

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/bo$1;->c:Lcom/flurry/sdk/bo$a;

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/bo$a;->a(ILcom/flurry/sdk/bo$c;)V

    return-void

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/flurry/sdk/bo$1;->c:Lcom/flurry/sdk/bo$a;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/bo$a;->a(ILcom/flurry/sdk/bo$c;)V

    return-void
.end method
