.class final Lcom/flurry/sdk/bo$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bo$b;->b(ILcom/android/vending/billing/IInAppBillingService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/vending/billing/IInAppBillingService;

.field final synthetic c:Lcom/flurry/sdk/bo$b;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bo$b;ILcom/android/vending/billing/IInAppBillingService;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/flurry/sdk/bo$b$1;->c:Lcom/flurry/sdk/bo$b;

    iput p2, p0, Lcom/flurry/sdk/bo$b$1;->a:I

    iput-object p3, p0, Lcom/flurry/sdk/bo$b$1;->b:Lcom/android/vending/billing/IInAppBillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/bo$b$1;->c:Lcom/flurry/sdk/bo$b;

    iget v1, p0, Lcom/flurry/sdk/bo$b$1;->a:I

    iget-object v2, p0, Lcom/flurry/sdk/bo$b$1;->b:Lcom/android/vending/billing/IInAppBillingService;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/bo$b;->a(ILcom/android/vending/billing/IInAppBillingService;)V

    return-void
.end method
