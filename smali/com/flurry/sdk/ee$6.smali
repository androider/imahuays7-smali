.class final Lcom/flurry/sdk/ee$6;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ee;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ec;

.field final synthetic b:Lcom/flurry/sdk/ee;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ee;Lcom/flurry/sdk/ec;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/flurry/sdk/ee$6;->b:Lcom/flurry/sdk/ee;

    iput-object p2, p0, Lcom/flurry/sdk/ee$6;->a:Lcom/flurry/sdk/ec;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/flurry/sdk/ee$6;->b:Lcom/flurry/sdk/ee;

    iget-object v1, p0, Lcom/flurry/sdk/ee$6;->a:Lcom/flurry/sdk/ec;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ee;->a(Lcom/flurry/sdk/ee;Lcom/flurry/sdk/ec;)V

    .line 422
    iget-object v0, p0, Lcom/flurry/sdk/ee$6;->b:Lcom/flurry/sdk/ee;

    invoke-static {v0}, Lcom/flurry/sdk/ee;->b(Lcom/flurry/sdk/ee;)Z

    return-void
.end method
