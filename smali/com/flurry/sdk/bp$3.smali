.class final Lcom/flurry/sdk/bp$3;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/bp;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/bp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp;J)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/flurry/sdk/bp$3;->b:Lcom/flurry/sdk/bp;

    iput-wide p2, p0, Lcom/flurry/sdk/bp$3;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/ep;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 727
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    .line 1144
    iget-object v0, v0, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    .line 727
    iget-wide v1, p0, Lcom/flurry/sdk/bp$3;->a:J

    .line 728
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/at;->a(J)V

    return-void
.end method
