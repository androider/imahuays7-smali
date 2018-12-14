.class final Lcom/flurry/sdk/ee$4;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ee;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ec;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/flurry/sdk/ee;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ee;Lcom/flurry/sdk/ec;Landroid/content/Context;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/flurry/sdk/ee$4;->c:Lcom/flurry/sdk/ee;

    iput-object p2, p0, Lcom/flurry/sdk/ee$4;->a:Lcom/flurry/sdk/ec;

    iput-object p3, p0, Lcom/flurry/sdk/ee$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/flurry/sdk/ee$4;->a:Lcom/flurry/sdk/ec;

    sget v1, Lcom/flurry/sdk/ec$a;->c:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ec;->a(I)V

    .line 269
    new-instance v0, Lcom/flurry/sdk/ed;

    invoke-direct {v0}, Lcom/flurry/sdk/ed;-><init>()V

    .line 270
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/flurry/sdk/ee$4;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    .line 271
    iget-object v1, p0, Lcom/flurry/sdk/ee$4;->a:Lcom/flurry/sdk/ec;

    iput-object v1, v0, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    .line 272
    sget v1, Lcom/flurry/sdk/ed$a;->e:I

    iput v1, v0, Lcom/flurry/sdk/ed;->d:I

    .line 273
    invoke-virtual {v0}, Lcom/flurry/sdk/ed;->b()V

    return-void
.end method
