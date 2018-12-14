.class final Lcom/flurry/sdk/da$3;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/da;->b(Lcom/flurry/sdk/er;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/er;

.field final synthetic b:Lcom/flurry/sdk/da;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/da;Lcom/flurry/sdk/er;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/flurry/sdk/da$3;->b:Lcom/flurry/sdk/da;

    iput-object p2, p0, Lcom/flurry/sdk/da$3;->a:Lcom/flurry/sdk/er;

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/da$3;->a:Lcom/flurry/sdk/er;

    invoke-virtual {v0}, Lcom/flurry/sdk/er;->h()V

    return-void
.end method
