.class final Lcom/flurry/sdk/az$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/az;->a(Lcom/flurry/sdk/ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ax;

.field final synthetic b:Lcom/flurry/sdk/az;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/az;Lcom/flurry/sdk/ax;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/flurry/sdk/az$5;->b:Lcom/flurry/sdk/az;

    iput-object p2, p0, Lcom/flurry/sdk/az$5;->a:Lcom/flurry/sdk/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 238
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 1103
    iget-object v0, v0, Lcom/flurry/sdk/cl;->a:Landroid/content/Context;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PulseCallbackReportInfo HTTP Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/az$5;->a:Lcom/flurry/sdk/ax;

    iget v2, v2, Lcom/flurry/sdk/ax;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flurry/sdk/az$5;->a:Lcom/flurry/sdk/ax;

    .line 2078
    iget-object v2, v2, Lcom/flurry/sdk/ax;->l:Lcom/flurry/sdk/aw;

    .line 3056
    iget-object v2, v2, Lcom/flurry/sdk/dn;->r:Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 238
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
