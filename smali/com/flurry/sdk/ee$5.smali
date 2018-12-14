.class final Lcom/flurry/sdk/ee$5;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ee;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/ee;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ee;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/flurry/sdk/ee$5;->c:Lcom/flurry/sdk/ee;

    iput-object p2, p0, Lcom/flurry/sdk/ee$5;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/sdk/ee$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/flurry/sdk/ee$5;->c:Lcom/flurry/sdk/ee;

    iget-object v1, p0, Lcom/flurry/sdk/ee$5;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ee;->a(Lcom/flurry/sdk/ee;Landroid/content/Context;)V

    .line 300
    invoke-static {}, Lcom/flurry/sdk/br;->a()Lcom/flurry/sdk/br;

    iget-object v0, p0, Lcom/flurry/sdk/ee$5;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/br;->a(Ljava/lang/String;)V

    return-void
.end method
